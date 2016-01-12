class LoginsController < ApplicationController

  def new
    @login = Login.new
  end

  def create
    if params[:login][:loginable_type] == "PrimaryCaregiver"
      caregiver = PrimaryCaregiver.create(about_me: "")
      patient = Patient.create
      caregiver.patient = patient
      @login = Login.new(login_params)
      @login.loginable_id = caregiver.id
      @login.loginable_type = "PrimaryCaregiver"
    else
      caregiver = OnCallCaregiver.create(about: "")
      @login = Login.new(login_params)
      @login.loginable_id = caregiver.id
      @login.loginable_type = "OnCallCaregiver"
      caregiver.add_badge(1)
    end

    if @login.save && caregiver.save
      flash[:notice] = 'You Are Now Registered!'
      session[:login_id] = @login.id
      redirect_to root_path
    else
      patient.destroy if patient
      caregiver.destroy
      render :new
    end
  end

  def update
    pcc = PrimaryCaregiver.find_by(id: params[:id])
    pcc.login
    pcc.login.update_attributes(pcc_login_params)
      if pcc.save
        redirect_to root_path
      else
        redirect_to primary_caregiver_path(primary_caregiver.id)
      end
  end

  def edit
    @pcc = PrimaryCaregiver.find_by(id: params[:id])

  end

private

  def login_params
    params.require(:login).permit(:email,:address,:city, :state, :password, :zipcode, :phone, :first_name, :last_name)
  end

  def pcc_login_params
      params.require(:login).permit(:email,:address,:city, :state, :password, :zipcode, :phone, :first_name, :last_name, :image)
  end
end

