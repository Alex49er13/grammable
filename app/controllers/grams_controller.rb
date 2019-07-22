class GramsController < ApplicationController
    before_action :authenticate_model!, only: [:new, :create]
    def new
        @gram = Gram.new
    end
    
    def create
    @gram = current_model.grams.create(gram_params)
    if @gram.valid?
        redirect_to root_path
    else render :new, status: :unprocessable_entity
    end
    end

    def index

    end

    private

    def gram_params
        params.require(:gram).permit(:message)
    end
end
