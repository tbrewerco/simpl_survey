class UsersController < ApplicationController
  before_action :set_user, only: %i[ :show :update :destroy ]

  # GET /users 
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users 
  def create
    @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity 
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
      if @user.update(user_params)
        render : @user, status: :ok, location: @user 
      else
        render json: @user.errors, status: :unprocessable_entity 
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    render json: @user
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:google_id)
    end
end
