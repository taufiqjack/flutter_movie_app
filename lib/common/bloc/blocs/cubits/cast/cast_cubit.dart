import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/resources/api_repository.dart';
import 'package:flutter_movie_app/common/models/cast_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_state.dart';
part 'cast_cubit.freezed.dart';

class CastCubit extends Cubit<CastState> {
  HomeRepository homeRepository = HomeRepository();
  CastCubit() : super(const CastState.initial());

  Future<void> getCast(int id) async {
    try {
      emit(const CastState.initial());
      final cast = await homeRepository.getCast(id);
      emit(CastState.success(cast!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(CastState.error(e.toString()));
    }
  }
}
