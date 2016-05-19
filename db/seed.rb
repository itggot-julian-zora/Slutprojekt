class Seeder

  def self.seed!
    self.user
    self.workout_and_exercises
  end

  def self.user
  User.create(name: "grabben",
              email:"grabben@gmail.com",
              password: "grabben",
              username: "grabben")
  end

  def self.workout_and_exercises
    workout = Workout.create(name: "Cardio - Beginner 1",
                  picture: '/img/',
                  time: 5, style: "cardio_beginner")

    Exercise.create(name: "20 Jumping Jacks",
                      picture: '/img/',
                      workout: workout)
    Exercise.create(name: "10 Burpees",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "30 Seconds Rest",
                    picture: '/img/',
                    workout: workout)


    workout = Workout.create(name: 'Cardio - Beginner 2',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_beginner')

    Exercise.create(name: "40 Jumping Jacks",
                      picture: '/img/',
                      workout: workout)
    Exercise.create(name: "20 Burpees",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "20 Seconds Rest",
                    picture: '/img/',
                    workout: workout)


    Workout.create(name: "Cardio - Beginner 3",
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_beginner')

    Workout.create(name: "Cardio - Intermediate 1",
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')

    Workout.create(name: "Cardio - Intermediate 2",
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')

    Workout.create(id: 0, name: "Cardio - Intermediate 3",
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')


  end

end