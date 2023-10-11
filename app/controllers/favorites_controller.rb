class FavoritesController < ApplicationController
  def index
    @favorite_pets = current_user.favorite_pets
  end

  def create
    favorite = Favorite.new
    like.user_id = current_user.id
    like.pet_id = params[:pet_id]

    if like.save
      redirect_to pets_path, success: 'お気に入り登録しました'
    else
      redirect_to pets_path, danger: 'お気に入り登録出来ませんでした'
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, pet_id: params[:pet_id])
    @favorite.destroy
    redirect_to pets_path, success: 'お気に入りを取り消しました'
  end
end
