require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do 
      
      erb :'pirates/new'
    end

    post '/pirates' do
      add_pirate = params[:pirate]
      @pirate= Pirate.new(add_pirate)

      params[:pirate][:ships].each do |add_ship|
          Ship.new(add_ship)
      end
      @ships= Ship.all

    erb :'pirates/show'
  end

  end
end
