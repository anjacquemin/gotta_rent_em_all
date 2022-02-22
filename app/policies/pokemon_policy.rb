class PokemonPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def index?
    true
  end

  def create?
    return true
  end

  def update?
    raise
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
