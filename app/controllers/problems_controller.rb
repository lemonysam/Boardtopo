class ProblemsController < ApplicationController

  def index
    @board = Board.find(params[:board_id])
  end
  def new
    @board = Board.find(params[:board_id])
  end
  def show
    @problem = Problem.where(id: params[:id], board_id: params[:board_id]).first()
    @holds = @problem.holds
    logger.debug "New problem: #{@problem.attributes.inspect}"

  end
  def create
    @problem = Problem.new(problem_params)
    hold_params[:holds].each do | hold |

      @problem.holds << Hold.find(hold[:id])
    end

    if @problem.save
      render json: @problem
    else
      render 'new'
    end
  end
  private
  def problem_params
    params.require(:problem).permit(:board_id, :name)
  end
  def hold_params
    params.permit(holds: [:id])
  end

end
