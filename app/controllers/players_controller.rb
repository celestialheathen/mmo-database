class PlayersController < ApplicationController
    def index 
        @players = Player.all 
        render json: @players
    end 

    def show 
        @player = Player.find_by(params[:pid])
        render json: @player
    end 

    def create
        @player = Player.create(player_params)
        render json: @player
    end 

    def update 
        @player = Player.find_by(params[:pid])
        @player.update(player_params)
        render json: @player
    end

    private
    
    def player_params 
        params.require(:player).permit(:pid, :x, :y)
    end 

end
