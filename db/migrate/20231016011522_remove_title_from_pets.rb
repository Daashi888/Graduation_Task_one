class RemoveTitleFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :title, :string
  end
end
