class UsersController < ApplicationController

	def new
	    @user = User.new
	end

	def create
    @user = User.new(user_params)
    @user.date_of_birth = parse_date_of_birth(params[:user])

    if @user.save
      flash[:notice] = "Welcome to the company announcement portal, #{@user.name}"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

	def index
	    @users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :bio, :date_of_birth)
	end

	def parse_date_of_birth(user_params)
    Date.new(user_params["date_of_birth_year"].to_i, user_params["date_of_birth_month"].to_i, user_params["date_of_birth_day"].to_i)
  end


end
