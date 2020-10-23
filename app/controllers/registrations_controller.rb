class RegistrationsController <  Devise::SessionsController
    respond_to :json

    def create
        build_resource(sign_up_params)
    
        resource.save
        render_resource(resource)
    end

    private

  def sign_up_params
    params.require(:registration).permit(:username, :email, :password) 
  end
end