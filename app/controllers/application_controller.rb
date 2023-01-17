class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'you are not authorized to perfom this action.'
    redirect_to(request.referrer || root_path)
  end
end
