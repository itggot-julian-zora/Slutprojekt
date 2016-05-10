class Seeder

  def self.seed!
    self.user
  end

  def self.user
  User.create(name: "grabben",
              email:"grabben@gmail.com",
              password: "grabben",
              username: "grabben")
  end

  def self.workout
    Workout.create(name: "Cardio - Beginner1",
                  picture: '/img/',
                  time: 5, style: "Cardio")

    Workout.create(name: "Cardio - Intermediate1",
                   picture: '/img/',
                   time: 5, style: "Cardio")

    Workout.create(name: "Cardio - Advanced1",
                   picture: '/img/',
                   time: 5, style: "Cardio")

    Workout.create(name: "Chest - Beginner",
                   picture: '/img/',
                   time: 5)

    Workout.create(name: "Chest - Intermediate",
                   picture: '/img/',
                   time: 5)

    Workout.create(name: "Chest - Advanced",
                   picture: '/img/',
                   time: 5)


  end

  def self.exercise
    Exercise.create(name: "Jumping Jacks",
                    picture: '/img/')
  end

end