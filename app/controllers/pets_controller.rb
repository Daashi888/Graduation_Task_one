class PetsController < ApplicationController
  # before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  # GET /pets or /pets.json
  def index
    @pets = Pet.all
    @search = @pets.ransack(params[:q])
    @pets = @search.result
  
    case params[:sort]
    when "1"
      @pets = @pets.old_registration_date
    when "2"
      @pets = @pets.early_registration_date
    end
  end

  # GET /pets/1 or /pets/1.json
  def show
    set_pet
    @favorite = current_user.favorites.find_by(pet_id: @pet.id)
  end

  # GET /pets/new
  def new
    recruiter_check
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
    set_pet
  end

  # POST /pets or /pets.json
  def create
    @pet = current_user.pets.build(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to pet_url(@pet), notice: "Pet was successfully created." }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1 or /pets/1.json
  def update
    set_pet
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to pet_url(@pet), notice: "Pet was successfully updated." }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1 or /pets/1.json
  def destroy
    set_pet
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:image, :title, :content, :select_animal, :age, :sex, :negotiating, :current_location, :prefecture, :dog_breed, :cat_species, :castrated, :vaccinated)
    end

    def recruiter_check
      if current_user.role != "recruiter"
        redirect_to pets_path
      end
    end
end
