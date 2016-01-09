class SearchController < ApplicationController
  def OCC
      nearby_logins=current_user.loginable.find_OCC(params[:distance])
      @caregiver= Login.change_to_loginable(nearby_logins)
      flash[:notice] = "Your current city and state are invalid. Please update your profile to contain a valid city and state." if !current_user.geocoded?
      render :results
  end

  def PC
      nearby_logins=current_user.loginable.find_PC(params[:distance])
      @caregiver= Login.change_to_loginable(nearby_logins)
      flash[:notice] = "Your current city and state are invalid. Please update your profile to contain a valid city and state." if !current_user.geocoded?
      render :results
  end

end
