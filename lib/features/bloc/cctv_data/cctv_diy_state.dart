part of 'cctv_diy_cubit.dart';

@freezed
class CctvDiyState with _$CctvDiyState {
  const factory CctvDiyState.initial() = _Initial;
  const factory CctvDiyState.loading() = _Loading;
  const factory CctvDiyState.error(String error) = _Error;
  const factory CctvDiyState.success(CctvDataDiy cctvData) = _Success;
}
