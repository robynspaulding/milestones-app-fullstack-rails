class MilestonesController < ApplicationController
  # def index
  #   @milestones = Milestone.all
  #   render template: "milestones/index"
  # end

  # def show
  #   @kid = Kid.find(params[:kid_id])
  #   @milestone = @kid.milestones.find_by(id: params[:id])
  #   render template: "kids/:id/milestones/show"
  # end

  # def new
  #   @milestone = Milestone.new
  #   render template: "milestones/new"
  # end

  def create
    @kid = Kid.find(params[:kid_id])
    @milestone = @kid.milestones.create(
      name: params[:milestone][:name],
      milestone: params[:milestone][:milestone],
      date: params[:milestone][:date],
      description: params[:milestone][:description],
      image: params[:milestone][:image],
      kid_id: @kid.id,
    )
    if @milestone.save
      redirect_to "/kids"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @milestone = Milestone.find_by(id: params[:id])
    render template: "milestones/edit"
  end

  def update
    @kid = Kid.find(params[:kid_id])
    @milestone = @kid.milestones.find_by(id: params[:id])
    @milestone.milestone = params[:milestone][:milestone]|| @milestone.milestone
    @milestone.date = params[:milestone][:date]|| @milestone.date
    @milestone.description = params[:milestone][:description]|| @milestone.description
    @milestone.image = params[:milestone][:image]|| @milestone.image

    @milestone.save
    redirect_to "/kids"
  end
  
  def destroy
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.destroy
    redirect_to "/kids/:id", status: :see_other
  end

end
