class FamilytreesController < ApplicationController
  def index
    @familytrees = current_user.familytrees
    render template: "familytrees/index"
  end

  def show
    @familytree = Familytree.find_by(id: params[:id])
    render template: "familytrees/show"
  end

  def new
    @familytree = Familytree.new
    render template: "familytrees/new"
  end

  def create
    @familytree = Familytree.new(
      name: params[:familytree][:name],
      relationship_to_user: params[:familytree][:relationship_to_user],
      birthday: params[:familytree][:birthday],
      image: params[:familytree][:image],
      user_id: current_user.id,
    )
    @familytree.save
    redirect_to "/familytrees"
  end

  def edit
    @familytree = Familytree.find_by(id: params[:id])
    render template: "familytrees/edit"
  end

  def update
    @familytree = Familytree.find_by(id: params[:id])
    @familytree.name = params[:familytree][:name] || @familytree.name
    @familytree.relationship_to_user = params[:familytree][:relationship_to_user] || @familytree.relationship_to_user
    @familytree.birthday = params[:familytree][:birthday] || @familytree.birthday
    @familytree.image = params[:familytree][:image] || @familytree.image
    if @familytree.save!
      redirect_to "/familytrees"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @familytree = Familytree.find_by(id: params[:id])
    @familytree.destroy
    redirect_to "/familytrees", status: :see_other
  end
end
