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

  scope :early_registration_date, -> {order(created_at: :asc)}
  scope :old_registration_date, -> {order(created_at: :desc)}
  # scope :sex_sort, -> {order(sex: :asc)}

  scope :title, -> (nickname){where('title LIKE ?' , "%#{nickname}%")}
  scope :select_animal, -> (p_select_animal){where(select_animal: p_select_animal)}

  # enum select_animal: { 犬: 0, 猫: 1 }
  # enum sex: { オス: 0, メス: 1 }
end
