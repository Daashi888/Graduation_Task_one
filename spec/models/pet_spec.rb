require 'rails_helper'

RSpec.describe 'ペットモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context '新規登録時に画像が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '', content: '秋田犬', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に本文が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に動物（犬、猫）の選択が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: '', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に年齢が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: '', gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に性別が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: 3, gender: '', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に現在地が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: 3, gender: 'オス', current_location: '', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に都道府県が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に去勢の有無が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: '', vaccinated: true)
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時にワクチン接種済みの有無が空の場合' do
      it 'バリデーションにひっかる' do
        pet = Pet.new(image: '失敗テスト', content: '失敗テスト', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: '')
        expect(pet).not_to be_valid
      end
    end
    context '新規登録時に必要な項目をすべて入力した場合' do
      it 'バリデーションが通る' do
        pet = Pet.new(image: '成功テスト', content: '成功テスト', select_animal: 'dog', age: 3, gender: 'オス', current_location: '秋田市', prefecture: 3, castrated: true, vaccinated: true)
        expect(pet).to be_valid
      end
    end
  end
end