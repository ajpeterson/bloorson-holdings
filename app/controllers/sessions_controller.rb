class SessionsController < ApplicationController
  include ApplicationHelper

  def destroy
    end_user_session
    redirect_to '/'
  end

  def new
    @login = LoginForm.new
  end

  def create
    @login = LoginForm.new(login_form_params)
    if @login.valid?
      set_user_session(@login.user_id)
      redirect_to user_path(@login.user_id)
    else
      render :'sessions/new'
    end
  end

  private

  def login_form_params
    params.require(:login_form).permit(:email, :password)
  end

end
