class BikeShareApp < Sinatra::Base

  get '/stations' do
    @stations = Station.all
    erb :index
  end

  get '/stations/new' do
    erb :new
  end

  get '/stations/:id' do
    @station = Station.find(params[:id])
    erb :show
  end

  post '/stations/new' do
    station = Station.create(params[:station])
    redirect '/stations'
  end

end
