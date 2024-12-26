import '../models/models.dart';

class CategoryEntity {
  String categoryId;
  String categoryName;
  int quizCount;
  List<Quiz> quizzes;

  // Constructor to initialize the quiz object with required fields.
  CategoryEntity({
    required this.categoryId,
    required this.categoryName,
    required this.quizCount,
    List<Quiz>? quizzes, // Allow nullable list and default to empty
  }) : quizzes = quizzes ?? []; // If no quizzes are provided, initialize with an empty list

  // Method to update the quiz count dynamically based on the quizzes list
  void updateQuizCount() {
    quizCount = quizzes.length;
  }


}