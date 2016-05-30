class Comment
  include DataMapper::Resource
  property(:id, Serial) #primary key, INTEGER, AUTO-INCREMENT
  property(:text, String)
  property(:time, DateTime)
  belongs_to :user
  belongs_to :workout
end