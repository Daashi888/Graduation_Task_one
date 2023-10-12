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
end
