module ApplicationHelper

  def show_errors(object, form_field)
    if object.errors.any?
      if !object.errors.messages[form_field].blank?
        object.errors.messages[form_field].join(', ').capitalize
      end
    end
  end

  def set_user_session(user_id)
    session[:user_id] = user_id
  end

  def end_user_session
    session[:user_id] = nil
  end

  def user_logged_in?
    session[:user_id] != nil
  end
end
