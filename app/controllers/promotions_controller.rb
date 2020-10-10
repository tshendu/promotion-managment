class PromotionsController < ApplicationController

  # This method will redirect to promotion index page and get list of fulfilled employee promotion.
  def index
    @promotion = Employee.get_promotion
  end

  # This method will get employee for promotion.
  def edit
    @promotion = Employee.find(params[:id])
    authorize @promotion
  end

  # @todo This method will save the employee promotion.
  def create
    # render plain: params[:@promotion].inspect

    @promotion=Promotion.new(promotion_params)
    authorize @promotion

    if @promotion.save
      flash[:notice] = "Employee promoted successfully."
      redirect_to promotion_path
    else
      flash[:error] = "Couldn't promote. Please contact system administrator."
      render :edit
    end
    end

    private
    def promotion_params
      params.require(:promotion).permit( :rank_id)
    end

end
