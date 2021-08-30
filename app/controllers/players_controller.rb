class PlayersController < ApplicationController

    def index
        @players = Player.all 
        render json: @players, status: :ok
    end

    def create
        @player = Player.create(
            name: params[:name], score: params[:score]
        )
        render json: @player   
    end

    def top_five
        @topFivePlayers = Player.all.sort_by { |player| -player[:score] }[0..4]
        render json: @topFivePlayers
    end
end
