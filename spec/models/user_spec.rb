require 'rails_helper'

RSpec.describe 'ユーザーモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context '新規登録時に姓が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: 3, city: '秋田市', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に名が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時にニックネームが空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に郵便番号が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '', prefecture: '秋田県',city: '秋田', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に都道府県が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '', city: '秋田', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に市区町村が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に番地が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '', gender: 'man', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に性別が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '秋田', gender: '', occupation: '失敗テスト', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に職業が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '秋田', gender: 'man', occupation: '', role: 'recruiter')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に権限種別が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: 1111111, prefecture: '秋田県', city: '秋田', ward_town: '秋田', gender: 'man', occupation: '失敗テスト', role: '')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に必要な項目をすべて入力した場合' do
      it 'バリデーションが通る' do
        user = User.new(email: 'rspec@example.com', password: 'password', last_name: '成功テスト', first_name: '成功テスト', nickname: '成功テスト', postal_code: 1111111, prefecture: '秋田県' ,city: '秋田', ward_town: '秋田', gender: 'man', occupation: '成功テスト', role: 'recruiter')
        expect(user).to be_valid
      end
    end
  end
end