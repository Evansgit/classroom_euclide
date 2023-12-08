import 'package:crypto_template/Screen/FullApps/Workout/core.dart';

class ExerciseService {
  List<Exercise> getExercises() {
    return <Exercise>[
      Exercise(
        title: "Dribble Exercises",
        image:
            "https://images.unsplash.com/photo-1606059100110-4230429584fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGd5bSUyMGJsYWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
        description:
            "You should always try to work out at least three times, spaced out across the week,  so you can get the maximum benefits. Therefore, anywhere from three to six workouts is ideal. I like to do six workouts a week on Monday through Saturday, with a rest day on Sunday. REST: Second of all, don't forget the rest day.",
        price: 5.0,
        rating: 5.0,
        moves: 17,
        sets: 12,
        minutes: 30,
        duration: 3,
      ),
      Exercise(
        title: "Combine Exercises",
        image:
            "https://images.unsplash.com/photo-1550345332-09e3ac987658?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
        description:
            "You should always try to work out at least three times, spaced out across the week,  so you can get the maximum benefits. Therefore, anywhere from three to six workouts is ideal. I like to do six workouts a week on Monday through Saturday, with a rest day on Sunday. REST: Second of all, don't forget the rest day.",
        price: 3.5,
        rating: 4.0,
        moves: 8,
        sets: 10,
        minutes: 17,
        duration: 2,
      ),
      Exercise(
        title: "Push-Up Exercises",
        image:
            "https://images.unsplash.com/photo-1648176777034-24674eaa2493?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fGd5bSUyMGJsYWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
        description:
            "You should always try to work out at least three times, spaced out across the week,  so you can get the maximum benefits. Therefore, anywhere from three to six workouts is ideal. I like to do six workouts a week on Monday through Saturday, with a rest day on Sunday. REST: Second of all, don't forget the rest day.",
        price: 7.0,
        rating: 4.4,
        moves: 20,
        sets: 17,
        minutes: 45,
        duration: 4,
      ),
      Exercise(
        title: "Burble-Up Exercises",
        image:
            "https://images.unsplash.com/photo-1651165960499-ce2de1b4f7d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fGd5bSUyMGJsYWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
        description:
            "You should always try to work out at least three times, spaced out across the week,  so you can get the maximum benefits. Therefore, anywhere from three to six workouts is ideal. I like to do six workouts a week on Monday through Saturday, with a rest day on Sunday. REST: Second of all, don't forget the rest day.",
        price: 4.0,
        rating: 4.7,
        moves: 10,
        sets: 9,
        minutes: 22,
        duration: 2,
      ),
    ];
  }
}
