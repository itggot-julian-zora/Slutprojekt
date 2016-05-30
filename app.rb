class App < Sinatra::Base
  enable :sessions

  before do
    if session[:user_id]
      @user = User.get(session[:user_id])
    end
  end

  get '/' do
    erb :login
  end

  get '/index' do
    erb :index
  end

  get '/homepage' do
    erb :index
  end

  get '/strength/difficulty' do
    erb :difficulty_strength
  end

  get '/cardio/difficulty' do
    erb :difficulty_cardio
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

  get '/accountcreated' do
    erb :accountcreated
  end

  get '/login.erb' do
    erb :login
  end

  get '/accountalreadyexists' do
    erb :accountalreadyexists
  end

  post '/user/new' do
    name = params['name']
    email = params['email']
    username = params['username']
    password = params['password']
    db_user = User.first(:username => username)
    if db_user.nil?
      User.create(name: name,
                  email: email,
                  password: password,
                  username: username)
      redirect '/accountcreated'
    else
      redirect '/accountalreadyexists'
    end
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  get '/exercise' do
    erb :exercise
  end

  get '/history' do
    @comments = Comment.all(:user => @user, :order => [ :time.desc ])
    erb :history
  end

  get '/workout/:style/comment/?' do
    @style = params[:style]
    erb :comment
  end

  post '/workout/:style/comment/?' do
    workout = Workout.first(:style => params[:style])
    if workout
      if params[:text]
        comm = Comment.create(:text => params[:text], :workout => workout, :user => @user, :time => Time.now)
        comm.save
        redirect '/history'
      end
    end
    redirect '/workout/cardio_beginner'
  end

  get '/workout/:style' do |style|
    @workouts = Workout.all(:style => style)
    erb :workout_listing
  end

  get '/workout/:style/:level/overview/?' do |style, level|
    @workout = Workout.first(:style => style, :level => level)
    @exercises = Exercise.all(:workout => @workout)
    erb :first_exercise
  end

    get '/workout/:style/exercise/:id' do |style, id|
    @exercise = Exercise.get(id)
    @workout = @exercise.workout
    erb :exercise
  end

end