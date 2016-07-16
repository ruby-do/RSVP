module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user!
    if current_user.nil?
      store_back_url
      flash[:error] = 'You must log in to access this page.'
      redirect_to new_session_path
    end
  end

  def store_back_url
    session[:back_url] = request.original_url
  end

  def redirect_back_or(url)
    redirect_to session[:back_url] || url
  end
end
