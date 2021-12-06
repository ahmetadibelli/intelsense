class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    @record.user_id == @user.id
  end

  def destroy?
    @record.user_id == @user.id
  end

  allow_user_to :update, :destroy
end
