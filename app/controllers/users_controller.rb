class UsersController < Clearance::UsersController

  def show
    id = params[:id]
    @user = User.find_by(id)
    render :json => @user
  end

  private
    
  def user_params
    params[:user].permit(:email, :password, :first_name, :last_name, :city, :state, :address, :card_number, :card_cvv, :card_expired_date)
  end
    
  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)
    city = user_params.delete(:city)
    state = user_params.delete(:state)
    address = user_params.delete(:address)
    card_number = user_params.delete(:card_number)
    card_cvv = user_params.delete(:card_cvv)
    card_expired_date = user_params.delete(:card_expired_date)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.first_name = first_name
      user.last_name = last_name
      user.city = city
      user.state = state
      user.address = address
      user.card_number = card_number
      user.card_cvv = card_cvv
      user.card_expired_date = card_expired_date
    end
  end
  
end