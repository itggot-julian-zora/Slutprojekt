class User_workout
  include DataMapper::Resource

  belongs_to :user, :key => true
  belongs_to :workout, :key => true
end