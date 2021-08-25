class PlayersController < ApplicationController

    def index
        @players = Player.all 
        render json: @players, status: :ok
    end

    # def create
    #     @player = Player.create(
    #         name: params[:name], score: params[:score]
    #     )
    #     render json: @players   
    # end

    # def top_five
    #     @players = Player.all
    #     byebug
    # end
end
