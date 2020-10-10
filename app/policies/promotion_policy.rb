class PromotionPolicy

  attr_reader :user, :promotion

  def initialize(user, promotion)
    @user=user
    @promotion=promotion
  end

  def new?
    @user.admin?
  end
  def show?
    @user.admin?
  end

  def create?
    @user.admin?
  end

end