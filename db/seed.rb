class Seeder

  def self.seed!
    self.user
    self.workout
    self.exercise
  end

  def self.user
  User.create(name: "grabben",
              email:"grabben@gmail.com",
              password: "grabben",
              username: "grabben")
  end

  def self.workout
    Workout.create(name: "Cardio - Beginner 1",
                  picture: '/img/',
                  time: 5, style: "Cardio")

    Workout.create(name: "Cardio - Beginner 2",
                   picture: '/img/',
                   time: 5, style: "Cardio")

    Workout.create(name: "Cardio - Beginner 3",
                   picture: '/img/',
                   time: 5, style: "Cardio")

    Workout.create(name: "Chest - Beginner",
                   picture: '/img/',
                   time: 5)

    Workout.create(name: "Chest - Intermediate",
                   picture: '/img/',
                   time: 5)

    Workout.create(id: 0, name: "Chest - Advanced",
                   picture: '/img/',
                   time: 5)


  end

  def self.exercise
    Exercise.create(name: "Jumping Jacks",
                    picture: '/img/',
                    workout_name: 'Cardio - Beginner 1')
    Exercise.create(name: "Pullups",
                    picture: '/img/',
                    workout_name: 'Cardio - Beginner 1')
  end

end