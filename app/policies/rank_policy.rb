class RankPolicy

  attr_reader :user, :employee

  def initialize(user, rank)
    @user=user
    @rank=rank
  end

  def new?
    @user.admin?
  end

  def update?
    @user.admin?
  end

  def destroy?
    return false if @user == @employee
    @user.admin?
  end
end