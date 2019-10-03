class UsersController < Clearance::UsersController

  def create
    @user = user_from_params 
    
    render template: 'users/new'
  end

  def show
    @users = User.all
  end

  private

  def user_from_params
    firstname = user_params.delete(:firstname)
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    mobile = user_params.delete(:mobile)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.firstname = firstname
      user.email = email
      user.password = password
      user.mobile = mobile
    end
  end

end
