class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
    render template: "milestones/index"
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
    render template: "milestones/show"
  end

  def new
    @milestone = Milestone.new
    render template: "milestones/new"
  end

  def create
    @milestone = Milestone.new(
      name: params[:milestone][:name],
      milestone: params[:milestone][:milestone],
      date: params[:milestone][:date],
      description: params[:milestone][:description],
      image: params[:milestone][:image],
      kid_id: params[:milestone][:kid_id],
    )
    if @milestone.save
      redirect_to "/milestones"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @milestone = Milestone.find_by(id: params[:id])
    render template: "milestones/edit"
  end

  def update
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.name = params[:milestone][:name] || @milestone.name
    @milestone.milestone = params[:milestone][:milestone]|| @milestone.milestone
    @milestone.date = params[:milestone][:date]|| @milestone.date
    @milestone.description = params[:milestone][:description]|| @milestone.description
    @milestone.image = params[:milestone][:image]|| @milestone.image

    @milestone.save
    redirect_to "/milestones"
  end
  
  def destroy
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.destroy
    redirect_to "/milestones", status: :see_other
  end

end
