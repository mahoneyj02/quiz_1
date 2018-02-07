class DogTreatsController < ApplicationController
    
    def index
        @dog_treats = DogTreat.all
        @dog_treat = DogTreat.new
    end
    
    def create
        @dog_treat = DogTreat.create(dog_treat_params)
        redirect_to root_path
    end
    
    private
    
    def dog_treat_params
        params.require(:dog_treat).permit(:name, :description, :rating)
    end
end
