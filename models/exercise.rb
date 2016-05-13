class Exercise
    include DataMapper::Resource
    property(:id, Serial) #primary key, INTEGER, AUTO-INCREMENT
    property(:name, String)
    property(:picture, String)
    belongs_to :workout
end