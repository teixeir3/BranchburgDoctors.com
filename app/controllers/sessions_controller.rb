class SessionsController < ApplicationController
  before_filter :require_signed_out!, :set_return_url, :only => [:new]
  before_filter :require_signed_in!, :only => [:update_facebook_auth, :destroy]
  
  def new
    respond_to do |format|
      format.html{ render :new }
      # format.js { render :new }
    end
  end

  def create
    google_data = request.env["omniauth.auth"]
    
    if google_data
      @user = User.where(provider: google_data["provider"], uid: google_data["uid"]).first
      
      @user = create_from_google_data(google_data) unless @user
    else
      @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password])
    end

    if @user
      sign_in(@user)
      flash[:notice] = ["Welcome #{@user.name}"]
      
      redirect_to (session[:return_url].nil?) ? :root : session[:return_url]
    else
      flash.now[:errors] = ["Incorrect credentials"]
      render :new
    end
  end
  
  def update_facebook_auth
    current_user.update_omniauth!(env["omniauth.auth"])
    
    if current_user.valid?
      flash[:notice] = ["Facebook Credentials Added!"]
    else
      flash[:error] = ["An Error Has Occurred!"] + current_user.errors.full_messages
    end
    
    redirect_to edit_user_url(current_user)
  end

  def destroy
    sign_out!
    redirect_to request.referrer
  end
end
