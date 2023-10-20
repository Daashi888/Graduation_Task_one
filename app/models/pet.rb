class Pet < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :content, presence: true
  validates :select_animal, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :current_location, presence: true
  validates :prefecture, presence: true
  validates :castrated, presence: true
  validates :vaccinated, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["age", "castrated", "cat_species", "content", "created_at", "current_location", "dog_breed", "id", "image", "negotiating", "prefecture", "select_animal", "gender", "title", "updated_at", "user_id", "vaccinated"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["favorites", "user"]
  end

  scope :early_registration_date, -> {order(created_at: :asc)}
  scope :old_registration_date, -> {order(created_at: :desc)}
  scope :select_animal, -> (p_select_animal){where(select_animal: p_select_animal)}

  enum select_animal: { dog: 0, cat: 1 }
end
