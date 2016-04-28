class Exercise
    include DataMapper::Resource
    property(:id, serial) #primary key, INTEGER, AUTO-INCREMENT
    property(:name, string)
    property(:picture, string)
end