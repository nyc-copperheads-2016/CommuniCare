class LoginsController < ApplicationController

  def new
    @login = Login.new

  end

  def create
    if(params[:loginable_type] == "PrimaryCaregiver")
      @primary_caregiver = PrimaryCaregiver.new
      @login = Login.new(login_params)
      @login.loginable_id = @primary_caregiver.id
      @login.loginable_type = "PrimaryCaregiver"
    else
      @on_call_caregiver = OnCallCaregiver.new
      @login = Login.new(login_params)
      @login.loginable_id = @on_call_caregiver.id
      @login.loginable_type = "OnCallCaregiver"
    end

    # if @login.save
    #   redirect_to
  end
end







#     if comment.save
#       redirect_to question_path(params[:question_id])  #have to pass in question.id as a local in the question show page when the comment is to an  answer
#     else
#       render 'new'
#     end
#   end
#    def edit
#   end

#   def destroy
#   end



# private

#   def login_params
#     params.require(:login).permit(:email,:address,:city, :state, :password, :zipcode, :phone, :first_name, :last_name)
#   end

# end





