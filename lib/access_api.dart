import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;


class AccessApi {
  Future<Map> getDataKuota() async {
    try {
      print('sdk http://192.168.57.22:9003/api/license-key/e063ede6-e9e4-11ef-8f79-00163e041a30');
      var _header = Uri.parse('http://192.168.57.22:9003/api/license-key/e063ede6-e9e4-11ef-8f79-00163e041a30');
      var _response = await http.get(_header);
      // if (_response.statusCode != 200) throw (Constant.DefaultErrorServer);
      var _responseData = jsonDecode(_response.body);
      print(_responseData);
      var _result = _responseData;
      return _result;
    } on SocketException {
      var _result = {"result": false, "message": "Constant.DefaultErrorServer"};
      return _result;
    } catch (e) {
      print(e.toString());
      var _result = {"result": false, "message": e.toString()};
      return _result;
    }
  }

  Future<Map> updateCounter(int counter) async {
    var _header = Uri.parse('http://192.168.57.22:9003/api/license/counter');
    var _body = jsonEncode({
      "branch_id": "BR0001",
      "expired_date": "2025-12-31",
      "license_id": 5987512356,
      "usage_counter": counter,
      "usage_limit": 1000
    });
    log('sdk http://192.168.57.22:9003/api/license/counter');
    log(_body);
    var _response = await http.post(_header,
        body: _body, headers: {"Content-Type": "application/json"});
    // if (_response.statusCode != 200) throw (Constant.DefaultErrorServer);
    var _responseData = jsonDecode(_response.body);
    print(_responseData);
    var _result = _responseData;
    return _result;
  }
}