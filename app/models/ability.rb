class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role == "admin"
      can [:index], Dashboard
      can [:index], Welcome
    elsif user.role == "guest"
      can [:index], Welcome
    end
  end
end
