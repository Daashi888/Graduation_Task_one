class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :nickname, presence: true
  validates :postal_code, presence: true, length: { is: 7 }
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :ward_town, presence: true
  validates :gender, presence: true
  validates :occupation, presence: true
  validates :role, presence: true
  
  has_many :pets
  has_many :favorites, dependent: :destroy
  has_many :favorite_pets, through: :favorites, source: :pet

  enum sex: { man: 0, woman: 1, etc: 2 }
  enum role: { recruiter: 0, receiver: 1, admin: 2 }
  enum prefecture:{
     "選択してください":0,
     北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
     茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
     新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
     岐阜県:21,静岡県:22,愛知県:23,三重県:24,
     滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
     鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
     徳島県:36,香川県:37,愛媛県:38,高知県:39,
     福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,
     沖縄県:47
   }

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.last_name = "ゲスト"
      user.first_name = "様"
      user.nickname = "ゲスト様"
      user.postal_code = 1058511
      user.prefecture = "東京都"
      user.city = "港区"
      user.ward_town = "六本木"
      user.gender = "etc"
      user.occupation = "システムエンジニア"
      user.role = "recruiter"
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end

  def self.guest_admin
    find_or_create_by!(email: 'guest_admin@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.last_name = "管理者"
      user.first_name = "ゲスト様"
      user.nickname = "管理者ゲスト様"
      user.postal_code = 1058511
      user.prefecture = "東京都"
      user.city = "港区"
      user.ward_town = "六本木"
      user.gender = "etc"
      user.occupation = "システムエンジニア"
      user.role = "admin"
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
  end
end
