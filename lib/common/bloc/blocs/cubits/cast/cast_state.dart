part of 'cast_cubit.dart';

@freezed
class CastState with _$CastState {
  const factory CastState.initial() = _Initial;
  const factory CastState.loading() = _Loading;
  const factory CastState.error(String message) = _Error;
  const factory CastState.success(CastModel cast) = _Success;
}
