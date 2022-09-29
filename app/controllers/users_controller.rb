class UsersController < ApplicationController
  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/login"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    render template: "users/edit"
  end

  def update
    @user = User.find_by(id: params[:id]) 
    @user.name = params[:user][:name] || @user.name
    @user.email = params[:user][:email] || @user.email
    @user.birthday = params[:user][:birthday] || @user.birthday
    @user.image = params[:user][:image] || @user.image

    if @user.save
      redirect_to "/users/:id"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/signup", status: :see_other
  end

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def index
    @user = User.all
  end

end
