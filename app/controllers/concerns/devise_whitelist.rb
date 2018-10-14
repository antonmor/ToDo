module DeviseWhiteList
extend ActiveSupport::Concern
    include do 
     before_action :configure_permitted_parameters, if: :devise_controller?
    end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sing_up, keys: [:name],[:lastname],[:city],[:country],[:address],[:about],[:address],[:gender],[:picture])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name],[:lastname],[:city],[:country],[:address],[:about],[:address],[:gender],[:picture])
  end


end