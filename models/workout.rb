class Workout
  include DataMapper::Resource
  property(:id, Serial) #primary key, INTEGER, AUTO-INCREMENT
  property(:name, String)
  property(:picture, String)
  property(:time, Integer)
  property(:style, String)
  has n, :exercises
end