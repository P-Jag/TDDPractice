import 'package:dartz/dartz.dart';
import 'package:tdd_practice/core/error/failures.dart';
import 'package:tdd_practice/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_practice/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia {
  GetConcreteNumberTrivia(this.repository);

  final NumberTriviaRepository repository;

  Future<Either<Failure, NumberTrivia>> execute({
    @required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
