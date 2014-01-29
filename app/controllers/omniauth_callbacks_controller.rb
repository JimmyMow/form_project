class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.omniauth_security(request.env['omniauth.auth'])
    if user.persisted?
      falsh.notice = "Signed in!"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
  alias_method :twitter, :all
end
