import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_state.dart';
part 'cast_cubit.freezed.dart';

class CastCubit extends Cubit<CastState> {
  final MovieRepository _rest = MovieRepository();
  CastCubit() : super(const CastState.initial());

  Future<void> getCast(int id) async {
    try {
      emit(const CastState.initial());
      final cast = await _rest.getCast(id);
      emit(CastState.success(cast!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(CastState.error(e.toString()));
    }
  }
}
