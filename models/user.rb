class User
  include DataMapper::Resource
  property(:id, serial) #primary key, INTEGER, AUTO-INCREMENT
  property(:name, string)
  property(:email, string)
  property(:password, BCryptHash)
  property(:username, string)
end