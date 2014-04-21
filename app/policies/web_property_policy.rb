class WebPropertyPolicy < ApplicationPolicy
  def index?
    user.present? && user.role?(:admin) || user.role?(:user)
  end

end