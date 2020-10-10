class RanksController < ApplicationController

  def index
    @rank= Rank.get_rank
  end

  def new
    @rank= Rank.new
    authorize @rank
  end

  def show
    authorize @rank
  end
  def edit
    @rank= Rank.find(params[:id])
  end

  # This method will save rank.
  def create
    @rank = Rank.new(rank_params)
    if @rank.save
      flash[:notice]= "New rank created successfully."
      redirect_to ranks_path
    else
      flash[:error]= "Couldn't save rank."
      render 'new'
    end
  end

  # This method will update rank from rank edit screen.
  def update
    @rank = Rank.find(params[:id])
    if @rank.update(rank_params)
      flash[:notice] = "Rank edited successfully."
      redirect_to ranks_path
    else
      flash[:error] = "Form is invalid"
      render :edit
    end
  end

  private
  def rank_params
    params.require(:rank).permit(:rank_title, :level, :salary, :is_active, :requirement, :qualification_id)
  end
end
