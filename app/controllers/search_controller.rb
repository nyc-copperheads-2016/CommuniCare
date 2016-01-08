class SearchController < ApplicationController
  def OCC
    current_user=Login.first
    nearby_OCCs=current_user.loginable.find_OCC(params[:miles])
    binding.pry
  end

  def PC
  end
end
