class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      begin 
        super 
      rescue ActiveRecord::RecordInvalid  => e
        render_resource(e.record)
      rescue ActiveRecord::RecordNotUnique => e 
        error = OpenStruct.new(errors: {user: 'Already exists'})
        validation_error(e.error)
      end 
    end




  end   