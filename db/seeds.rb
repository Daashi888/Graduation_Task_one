# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.create(animal_select: '雑種犬', age: '3', sex: '1', prefecture:'岡山県')
Pet.create(animal_select: '秋田犬', age: '1', sex: '1', prefecture:'秋田県')
Pet.create(animal_select: '甲斐犬', age: '5', sex: '2', prefecture:'山梨県')
Pet.create(animal_select: 'マルチーズ', age: '7', sex: '2', prefecture:'東京都')
Pet.create(animal_select: 'ポメラニアン', age: '11', sex: '1', prefecture:'青森県')
Pet.create(animal_select: '雑種猫', age: '1', sex: '2', prefecture:'福岡県')
Pet.create(animal_select: 'シャム猫', age: '0', sex: '1', prefecture:'福井県')
Pet.create(animal_select: 'ロシアンブルー', age: '1', sex: '2', prefecture:'大阪府')
Pet.create(animal_select: 'さび猫', age: '0', sex: '2', prefecture:'鹿児島県')
Pet.create(animal_select: 'アメリカンショートヘア', age: '5', sex: '2', prefecture:'神奈川県')
