require 'rails_helper'

RSpec.describe 'ペットモデル機能', type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe 'バリデーションのテスト' do
    context '新規登録時に画像が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に本文が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に動物（犬、猫）の選択が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に年齢が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に性別が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に現在地が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に都道府県が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に去勢の有無が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '', vaccinated: '失敗テスト')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時にワクチン接種済みの有無が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '失敗テスト', age: '失敗テスト', gender: '失敗テスト', current_location: '失敗テスト', prefecture: '失敗テスト', castrated: '失敗テスト', vaccinated: '')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に必要な項目をすべて入力した場合' do
      it 'バリデーションが通る' do
        pet = Pet.new(image: '成功テスト', content: '成功テスト', select_animal: '成功テスト', age: '成功テスト', gender: '成功テスト', current_location: '成功テスト', prefecture: '成功テスト', castrated: '成功テスト', vaccinated: '成功テスト')
        expect(pet).to be_valid
      end
    end
  end
end