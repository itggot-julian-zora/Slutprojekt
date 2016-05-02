class App < Sinatra::Base
  enable :sessions

  get '/' do
    @user = User.get(session[:user_id])
    erb :login
  end

  get '/homepage' do
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

  post '/login' do
    user = User.first(username: params["username"])
    if user && user.password == params["password"]
      session[:user_id] = user.id
      redirect '/homepage'
    else
      redirect '/register'
    end
  end

  get '/register' do
    erb :register
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

end