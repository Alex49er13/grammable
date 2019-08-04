class ApplicationController < ApplicationRecord
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
  
    def render_not_found(status=:not_found)
        render plain: "#{status.to_s.titleize} :(", status: status
      end
    

end
