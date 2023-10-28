


import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gimmenow/core/error/failures.dart';
import 'package:gimmenow/core/network/parser_json.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, ParserJson<Type>>> call(Params params);
}

class NoReturn extends Equatable {
  @override
  List<Object> get props => [];
}

class NoParamsV1 extends Equatable {
  @override
  List<Object> get props => [];
}
