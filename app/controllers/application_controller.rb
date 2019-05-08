# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    redirect_to root_path, notice: "You are NOT allowed to edit this #{policy_name.humanize.split.first.downcase}"
  end
end
