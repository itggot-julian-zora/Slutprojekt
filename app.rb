class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/difficulty_strength.erb' do
    erb :difficulty_strength
  end

  get '/strength_beginner.erb' do
    erb :strength_beginner
  end

  get '/strength_intermediate.erb' do
    erb :strength_intermediate
  end

  get '/strength_advanced.erb' do
    erb :strength_advanced
  end

  get '/difficulty_cardio.erb' do
    erb :difficulty_cardio
  end

  get '/cardio_beginner.erb' do
    erb :cardio_beginner
  end

  get '/cardio_intermediate.erb' do
    erb :cardio_intermediate
  end

  get '/cardio_advanced.erb' do
    erb :cardio_advanced
  end

end