class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/new' do
    @recipe = Recipe.new(name: => params[:name], ingredients: => params[:ingredients], cook_time: => params[:cook_time])
    erb :new
  end


end
