class ChangeDatatypePrefectureOfPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :prefecture, :integer, using: 'prefecture::integer'
  end
end
