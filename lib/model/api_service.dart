import 'dart:developer';

import 'package:http/http.dart' as http;
// import 'package:rest_api_example/constants.dart';
// import 'package:visiting/model/user_model.dart';
import 'package:VisitingCardMaker/constants.dart';
import 'package:VisitingCardMaker/model/user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
