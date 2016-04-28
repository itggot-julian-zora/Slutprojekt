class Workout
  include DataMapper::Resource
  property(:id, serial) #primary key, INTEGER, AUTO-INCREMENT
  property(:name, string)
  property(:picture, string)
  property(:time, string)
end