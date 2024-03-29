import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/core/repository/movie_repo.dart';
import 'package:flutter_movie_app/features/cctv/models/cctv_data_diy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cctv_diy_state.dart';
part 'cctv_diy_cubit.freezed.dart';

class CctvDiyCubit extends Cubit<CctvDiyState> {
  final MovieRepository _repo = MovieRepository();

  CctvDiyCubit() : super(const CctvDiyState.initial());

  Future<void> getCcTv() async {
    try {
      emit(const CctvDiyState.initial());
      final cctv = await _repo.getCcctvData();
      emit(CctvDiyState.success(cctv!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(CctvDiyState.error(
        e.toString(),
      ));
    }
  }
}
