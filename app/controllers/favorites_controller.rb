class FavoritesController < ApplicationController
  def index
    @favorite_pets = current_user.favorite_pets
  end

  def create
    favorite = Favorite.new
    #favorite.user_id = current_user.id
    #favorite.pet_id = params[:pet_id]
    favorite = current_user.favorites.create(pet_id: params[:pet_id])
    redirect_to pets_path, notice: "お気に入り登録しました"
  end

  def destroy
    #@favorite = Favorite.find_by(user_id: current_user.id, pet_id: params[:pet_id])
    #@favorite.destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to pets_path, notice: 'お気に入りを取り消しました'
  end
end
