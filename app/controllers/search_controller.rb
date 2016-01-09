class SearchController < ApplicationController
  def OCC
    current_user=Login.first
    nearby_logins=current_user.loginable.find_OCC(params[:distance])
    @caregiver= Login.change_to_loginable(nearby_logins)
    render :results
  end

  def PC
  end

end
