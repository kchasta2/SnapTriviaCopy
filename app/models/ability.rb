class Ability
  include CanCan::Ability

  def initialize(user)

  end

  def initialize(admin)

  end

  def initialize(reviewer)

  end

  if user.role? :user

  end

  if user.role? :admin

  end

  if user.role? :reviewer

  end
end
