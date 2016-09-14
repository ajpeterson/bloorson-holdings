class LoginForm
  include ActiveModel::Model

  attr_accessor :email, :password

  validates_presence_of :email, allow_blank: false, message: "Please enter your email."
  validates_presence_of :password, allow_blank: false, message: "Please enter your password."

  validate :authentic_user

  def authentic_user
    user = User.find_by(:email => @email)
    if user == nil
      @errors.add("email and password", "were entered incorrectly")
    elsif user.authenticate(@password) == false
      @errors.add("email and password", "were entered incorrectly")
    end
  end

  def user_id
    User.find_by(:email => @email).id
  end

end
