class ApplicationController < Sinatra::Base

    get '/' do
      { message: "Hello world" }.to_json
    end
    
    get '/games' do
        game = Game.all
        game.to_json
    end

    get '/games/:id' do
        game = Game.find(params[:id])
        game.to_json
    end

    get '/users' do
        user = User.all
        user.to_json
    end

    get '/users/:id' do
        user = User.find(params[:id])
        user.to_json
    end

    get '/reviews' do
        review = Review.all
        review.to_json
    end

    get '/reviews/:id' do
        review = Review.find(params[:id])
        review.to_json
    end
  end
  