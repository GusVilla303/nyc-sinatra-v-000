class FiguresController < ApplicationController

  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])

    erb :"figures/#{@figure.id}"
  end

end
