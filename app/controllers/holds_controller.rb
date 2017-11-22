class HoldsController < ApplicationController
  def list
  end
  def new
    @hold = Hold.new
  end
  def create
    @hold = Hold.new(hold_params)
    if @hold.save
      redirect_to @hold
    else
      render 'new'
    end
  end
  def show
    @hold = Hold.find(params[:id])
    render json: @hold
  end

  def destroy

    @hold = Hold.find(params[:id])
    @hold.destroy


  end
  private
  def hold_params
    params.require(:hold).permit(:x, :y, :board_id)
  end
end
