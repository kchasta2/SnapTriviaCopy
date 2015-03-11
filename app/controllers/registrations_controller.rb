class RegistrationsController < Devise::RegistrationsController
  def update_resource(resource, params)
    if session[:logged_in_omniauth].present?
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end
end