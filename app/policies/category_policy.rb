class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      raise Pundit::NotAuthorizedError unless user.admin?

      scope.all
    end
  end

  def index?
    user.admin?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
