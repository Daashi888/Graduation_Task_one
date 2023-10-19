# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'sato@example.com', password:'123456', last_name:'佐藤', first_name:'太郎', nickname:'たろう', postal_code: 1608611 , prefecture:'北海道', city:'札幌市', ward_town:'中央区', gender:'man', occupation:'自営業', role:'admin')
User.create!(email: 'suzuki@example.com', password:'123456', last_name:'鈴木', first_name:'一郎', nickname:'イチロー', postal_code: 4800292 , prefecture:'愛知県', city:'西春日井郡', ward_town:'豊山町', gender:'man', occupation:'元プロ野球選手', role:'receiver')
User.create!(email: 'takahashi@example.com', password:'123456', last_name:'高橋', first_name:'次郎', nickname:'ラーメン次郎', postal_code: 2778505 , prefecture:'千葉県', city:'柏市', ward_town:'柏', gender:'etc', occupation:'サラリーマン', role:'recruiter')
User.create!(email: 'tanaka@example.com', password:'123456', last_name:'田中', first_name:'愛子', nickname:'愛子様', postal_code: 1028688 , prefecture:'東京都', city:'千代田区', ward_town:'千代田', gender:'woman', occupation:'学生', role:'recruiter')
User.create!(email: 'ito@example.com', password:'123456', last_name:'伊藤', first_name:'佳子', nickname:'佳子さま', postal_code: 1028688 , prefecture:'東京都', city:'千代田区', ward_town:'千代田', gender:'woman', occupation:'無職', role:'recruiter')

Pet.create!(image:File.open("./public/images/mix_dog.png"), content:'可愛い雑種の犬です', select_animal: 'dog', age: '0', gender: 'オス', current_location:'岡山市', prefecture:'岡山県', castrated: true, vaccinated: true, user_id: User.last.id)
Pet.create!(image:File.open("./public/images/pomeranian.png"), content:'可愛いポメラニアンです', select_animal: 'dog', age: '1', gender: 'メス', current_location:'仙台市', prefecture:'宮城県', castrated:true, vaccinated:true, user_id: User.last.id)
Pet.create!(image:File.open("./public/images/akita_dog.png"), content:'可愛い秋田犬です', select_animal: 'dog', age: '3', gender: 'オス', current_location:'浦安市', prefecture:'千葉県', castrated:true, vaccinated:true, user_id: User.last.id)
Pet.create!(image:File.open("./public/images/mix_cat.png"), content:'可愛い雑種の猫です', select_animal: 'cat', age: '5', gender: 'メス', current_location:'大津市', prefecture:'滋賀県', castrated:true, vaccinated:true, user_id: User.last.id)
Pet.create!(image:File.open("./public/images/tortoiseshell_cat.png"), content:'可愛いさび猫です', select_animal: 'cat', age: '7', gender: 'オス', current_location:'高松市', prefecture:'香川県', castrated:true, vaccinated:true, user_id: User.last.id)
Pet.create!(image:File.open("./public/images/siamese_cat.png"), content:'可愛いシャム猫です', select_animal: 'cat', age: '8', gender: 'メス', current_location:'那覇市', prefecture:'沖縄県', castrated:true, vaccinated:true, user_id: User.last.id)