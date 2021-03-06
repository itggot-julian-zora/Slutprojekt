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
    workout = Workout.create(name: 'Cardio - Beginner 1',
                  picture: '/img/',
                  time: 5, style: "cardio_beginner",
                  level: 1)

    Exercise.create(name: "15 Climbers",
                    picture: '/img/',
                    workout: workout,
                    next: 2)
    Exercise.create(name: "10 Burpees",
                    picture: '/img/',
                    workout: workout,
                    next: 3)
    Exercise.create(name: "15 Situps",
                    picture: '/img/',
                    workout: workout,
                    next: 4)
    Exercise.create(name: "15 Squats",
                    picture: '/img/',
                    workout: workout,
                    next: 5)
    Exercise.create(name: "20 Jumping Jacks",
                    picture: '/img/',
                    workout: workout,
                    next: 6)


    workout = Workout.create(name: 'Cardio - Beginner 2',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_beginner',
                  level: 2)

    Exercise.create(name: "40 Jumping Jacks",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "20 Burpees",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "20 Seconds Rest",
                    picture: '/img/',
                    workout: workout)


    workout = Workout.create(name: 'Cardio - Beginner 3',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_beginner',
                  level: 3)

    Exercise.create(name: "60 Jumping Jacks",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "30 Burpees",
                    picture: '/img/',
                    workout: workout)
    Exercise.create(name: "15 Seconds Rest",
                    picture: '/img/',
                    workout: workout)


    workout = Workout.create(name: 'Cardio - Intermediate 1',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')

    Exercise.create(name: "80 Jumping Jacks",
                    picture: '/img/',
                    workout: workout,
                    next: 11)
    Exercise.create(name: "50 Burpees",
                    picture: '/img/',
                    workout: workout,
                    next: 12)
    Exercise.create(name: "10 Seconds Rest",
                    picture: '/img/',
                    workout: workout)

    Workout.create(name: 'Cardio - Intermediate 2',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')

    Workout.create(name: 'Cardio - Intermediate 3',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_intermediate')

    Workout.create(name: 'Cardio - Advanced 1',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_advanced')

    Workout.create(name: 'Cardio - Advanced 2',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_advanced')

    Workout.create(name: 'Cardio - Advanced 3',
                   picture: '/img/',
                   time: 5,
                   style: 'cardio_advanced')

    Workout.create(name: 'Strength - Beginner 1',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_beginner')

    Workout.create(name: 'Strength - Beginner 2',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_beginner')

    Workout.create(name: 'Strength - Beginner 3',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_beginner')

    Workout.create(name: 'Strength - Intermediate 1',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_intermediate')

    Workout.create(name: 'Strength - Intermediate 2',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_intermediate')

    Workout.create(name: 'Strength - Intermediate 3',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_intermediate')

    Workout.create(name: 'Strength - Advanced 1',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_advanced')

    Workout.create(name: 'Strength - Advanced 2',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_advanced')

    Workout.create(name: 'Strength - Advanced 3',
                   picture: '/img/',
                   time: 5,
                   style: 'strength_advanced')


  end

end