class User
  include DataMapper::Resource
  property(:id, Serial) #primary key, INTEGER, AUTO-INCREMENT
  property(:name, String)
  property(:email, String)
  property(:password, BCryptHash)
  property(:username, String)
  has n, :comment
end