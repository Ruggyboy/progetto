class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to MyBand!"
      redirect_to @user
    else
      render 'users/new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end







  #def become_leader
  #  (User.find(params[:id])).update_attribute(:leader, true)
  #end







  private

  def user_params
    #params.require(:user).permit(:name, :email, :password, :password_confirmation)
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :location)
  end

end
