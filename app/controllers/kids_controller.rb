class KidsController < ApplicationController
  before_action :current_user
  before_action :authenticate_user

  def index
    @kids = current_user.kids
    render template: "kids/index"
  end

  def show
    @kid = Kid.find_by(id:params[:id])
    render template: "kids/show"
  end

  def new
    @kid = Kid.new
    render template: "kids/new"
  end

  def create
    @kid = Kid.new(
      first_name: params[:kid][:first_name],
      last_name: params[:kid][:last_name],
      birthday: params[:kid][:birthday],
      image: params[:kid][:image],
      user_id: current_user.id,
    )
    if @kid.save
      redirect_to "/kids"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @kid = Kid.find_by(id: params[:id])
    render template: "kids/edit"
  end

  def update
    @kid = Kid.find_by(id: params[:id])
    @kid.first_name = params[:kid][:first_name] || @kid.first_name
    @kid.last_name = params[:kid][:last_name] || @kid.last_name
    @kid.birthday = params[:kid][:birthday] || @kid.birthday
    @kid.image = params[:kid][:image] || @kid.image

   
    if @kid.save!
      redirect_to "/kids"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kid = Kid.find_by(id: params[:id])
    @kid.destroy
    redirect_to "/kids", status: :see_other
  end

end
