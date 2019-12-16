class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      begin 
        super 
      rescue ActiveRecord::RecordInvalid  => e
        render_resource(e.record)
      rescue ActiveRecord::RecordNotUnique => e 
        error = OpenStruct.new(errors: {detail: 'User already exists'})
        validation_error(error)
      end 
    end




  end   