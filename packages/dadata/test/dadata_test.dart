import 'package:dadata/dadata.dart';
import 'package:test/test.dart';

void main() {
  final api = DaDataClient(apiKey: '');

  test('fetchAddressTooltip', () async {
    var result = await api.fetchAddressTooltip('город');

    expect(result.suggestions, isNotEmpty);
  });
  test('fetchCityTips', () async {
    var result = await api.fetchCityTips('троек');

    expect(result.suggestions, isNotEmpty);
  });

  test('fetchStreetTips', () async {
    var result =
        await api.fetchStreetTips('ма', 'c2deb16a-0330-4f05-821f-1d09c93331e6');

    expect(result.suggestions, isNotEmpty);
  });
  // test('isSuccessAdress 1', () async {
  //   var result = await api.isSuccessAdress(
  //     city: 'г Санкт-Петербург',
  //     street: 'Светлановский пр-кт',
  //     house: '23',
  //     body: '1',
  //     structure: '2',
  //     apartment: '3',

  //     );

  //   expect(result, false);
  // });

//   test('isSuccessAdress 2', () async {
//     var result = await api.isSuccessAdress(
//       city: 'г Санкт-Петербург',
//       street: 'Светлановский пр-кт',
//       house: '23',
// apartment: '3'

//       );

//     expect(result, true);
//   });
  test('fetchFioTooltip', () async {
    var result = await api.fetchFioTooltip('дми', DaDataEnum.surname);
    expect(result.suggestions, isNotEmpty);
  });
  test('fetchFioTooltip All ', () async {
    var result = await api.fetchFioTooltip('дми', DaDataEnum.all);

    expect(result.suggestions, isNotEmpty);
  });
  test('fetchPassportTooltip', () async {
    var result = await api.fetchPassportTooltip('460');
    expect(result.suggestions, isNotEmpty);
  });

  test('getListStringData', () async {
    var result = await api.fetchSimpleTooltip('дhhjhjhjмит', DaDataEnum.name);

    expect(result, isNotEmpty);
  });
}
