class LoginsController < ApplicationController

  def new
    @login = Login.new

  end

  def create
    if params[:login][:loginable_type] == "PrimaryCaregiver"
      caregiver = PrimaryCaregiver.create(about_me: "")
      @login = Login.new(login_params)
      @login.loginable_id = caregiver.id
      @login.loginable_type = "PrimaryCaregiver"
    else
      caregiver = OnCallCaregiver.create(about: "")
      @login = Login.new(login_params)
      @login.loginable_id = caregiver.id
      @login.loginable_type = "OnCallCaregiver"
    end

    if @login.save
      flash[:notice] = 'You Are Now Registered!'
      session[:login_id] = @login.id
      redirect_to root_path
    else
      render :new
    end
  end

private
  def login_params
    params.require(:login).permit(:email,:address,:city, :state, :password, :zipcode, :phone, :first_name, :last_name)
  end
end
