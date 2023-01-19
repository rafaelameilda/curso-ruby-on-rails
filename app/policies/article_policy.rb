class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user&.id
  end

  def update?
    user&.id == record.user.id
  end

  def destroy?
    user&.id == record.user.id
  end
end
