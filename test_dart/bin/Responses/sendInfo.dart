import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import '../customResponse/cusotmR.dart';
import '../model/dataModel.dart';

/*Description: This endpoint should accept an email and password in the request body and authenticate the user.
Functionality: Verify the email and password from a provided file in your project and return a response indicating whether the authentication was successful or not.*/
sendInfo(Request req) async {
  try {
    final jsonBody = json.decode(await req.readAsString());
    File jsonFile = File('userinfo.json');
    List<dataModel> T_userInfo = [];

    final selectedUser =
        T_userInfo.firstWhere((user) => user == jsonFile["email"]);

    if (selectedUser["password"] != jsonBody["password"]) {
      return Response.forbidden(
        "Wrong password!",
      );
    }
    return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }
}
