require 'rails_helper'

RSpec.describe 'ユーザーモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context '新規登録時に姓が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に名が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時にニックネームが空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に郵便番号が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に都道府県が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に市区町村が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に番地が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '', gender: '失敗テスト', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に性別が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '', occupation: '失敗テスト', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に職業が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '', role: '失敗テスト')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に権限種別が空の場合' do
      it 'バリデーションにひっかる' do
        user = User.new(last_name: '失敗テスト', first_name: '失敗テスト', nickname: '失敗テスト', postal_code: '失敗テスト', prefecture: '失敗テスト',city: '失敗テスト', ward_town: '失敗テスト', gender: '失敗テスト', occupation: '失敗テスト', role: '')
        expect(user).not_to be_valid
      end
    end
    context '新規登録時に必要な項目をすべて入力した場合' do
      it 'バリデーションが通る' do
        user = User.new(last_name: '成功テスト', first_name: '成功テスト', nickname: '成功テスト', postal_code: '成功テスト', prefecture: '成功テスト',city: '成功テスト', ward_town: '成功テスト', gender: '成功テスト', occupation: '成功テスト', role: '成功テスト')
        expect(user).to be_valid
      end
    end
  end
end