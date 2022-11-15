import 'package:equatable/equatable.dart';

class BaseModel extends Equatable {
  const BaseModel({required this.id});
  final String id;

  @override
  List<Object?> get props => throw UnimplementedError();
}
