class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/strength/difficulty' do
    erb :difficulty_strength
  end

  get '/strength/beginner' do
    erb :strength_beginner
  end

  get '/strength/intermediate' do
    erb :strength_intermediate
  end

  get '/strength/advanced' do
    erb :strength_advanced
  end

  get '/cardio/difficulty' do
    erb :difficulty_cardio
  end

  get '/cardio/beginner' do
    erb :cardio_beginner
  end

  get '/cardio/intermediate' do
    erb :cardio_intermediate
  end

  get '/cardio/advanced' do
    erb :cardio_advanced
  end

end