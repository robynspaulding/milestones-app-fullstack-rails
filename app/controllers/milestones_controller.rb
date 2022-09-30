class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
    render template: "milestones/index"
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
    render template: "milestones/show"
  end
end
