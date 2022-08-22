import 'package:freezed_annotation/freezed_annotation.dart';

part 'mltd_vs_mtd_data.freezed.dart';

@freezed
class MltdVsMtdData with _$MltdVsMtdData {
  const factory MltdVsMtdData({
    required String date,
    required int num,
  }) = _MltdVsMtdData;
}
