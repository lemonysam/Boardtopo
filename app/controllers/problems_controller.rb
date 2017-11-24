class ProblemsController < ApplicationController

  def index
    @board = Board.find(params[:board_id])
  end
  def new
    @board = Board.find(params[:board_id])
  end
  def create
    @problem = Problem.new(problem_params)
    logger.debug "New article: #{@problem.attributes.inspect}"

    if @problem.save
      redirect_to @problem
    else
      render 'new'
    end
  end
  private
  def problem_params
    params.require(:problem).permit(:board_id, :name, holds_attributes: [:id, :x, :y])
  end
end
