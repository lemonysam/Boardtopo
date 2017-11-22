class BoardsController < ApplicationController
  def list
  end
  def new
    @board = Board.new
  end
  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to @board
    else
      render 'new'
    end
  end
  def update
    @board = Board.find(params[:id])
    @patchModel = Board.new(board_params)
    @board.holds = @patchModel.holds
    @board.save
  end
  def show
    @board = Board.find(params[:id])
  end
  private
  def board_params
    params.require(:board).permit(:name, :imageUrl, :holds)
  end
end
