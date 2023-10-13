class Pet < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  mount_uploader :image, ImageUploader

  def self.ransackable_attributes(auth_object = nil)
    ["age", "castrated", "cat_species", "content", "created_at", "current_location", "dog_breed", "id", "image", "negotiating", "prefecture", "select_animal", "sex", "title", "updated_at", "user_id", "vaccinated"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["favorites", "user"]
  end

  scope :early_registration_date, -> {order(created_at :asc)}
  scope :old_registration_date, -> {order(created_at: :desc)}

  scope :name_search, -> (name){where('title LIKE ?' , "%#{name}%")}
  scope :status_search, -> (p_status){where(status: p_status)}

  enum select_animal: { 犬: 0, 猫: 1 }
  enum sex: { オス: 0, メス: 1 }
end
