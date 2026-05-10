import 'package:mobile_base_clean/shared/entity/province.dart';
import 'package:mobile_base_clean/shared/model/province_data.dart';
import 'package:mobile_base_clean/shared/mappers/base/base_data_mapper.dart';

class ProvinceDataMapper extends BaseDataMapper<ProvinceData, Province> {
  @override
  Province mapToEntity(ProvinceData? data) {
    return Province(
      id: data?.id ?? '',
      name: data?.name ?? '',
      code: data?.code ?? '',
    );
  }
}
