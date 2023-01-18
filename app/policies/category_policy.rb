class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      raise Pundit::NotAuthorizedError unless user&.admin? || user&.has_role?(:moderator)

      scope.all
    end
  end

  def index?
    user&.admin? || user&.has_role?(:moderator)
  end

  def create?
    user&.admin? || user&.has_role?(:moderator)
  end

  def update?
    user&.admin? || user&.has_role?(:moderator)
  end

  def destroy?
    user.admin?
  end
end
