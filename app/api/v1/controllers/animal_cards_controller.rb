class AnimalCardsController < ApplicationController

    def create 
        @animalcard = AnimalCard.create(animalcard_params)
        render json: @animalcard
    end 

    def show 
        @animalcard = AnimalCard.find_by_id(params[:id])
        render json: @animalcard
    end 
    
    def index 
        @animalcards = AnimalCard.all 
        render json: @animalcards
    end 

    def destroy 
        @animalcard = AnimalCard.find_by_id(params[:id])
        @animalcard.destroy
    end 

    private

    def animalcard_params 
        params.require(:animalcard).permit(:common_name, :scientific_name, :endangered_level, :population_trend, :assessment_date)
    end

end

