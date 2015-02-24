class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new

    if(@user.admin)
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
    end
    if(@user.reviewer)
      can :access, :rails_admin
      can :dashboard
      can :manage, Question
    end

  end

end
