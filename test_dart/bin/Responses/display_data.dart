import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../customResponse/cusotmR.dart';
import '../model/datapost.dart';

/*Description: This endpoint should retrieve and display all the user data that has been previously saved.
Functionality: Read the user data from the file in the project directory and return a response with the retrieved data.
*/

display_data(Request req, String id) async {
  try {
    File myFile = File('posts.json');
    final Map content = json.decode(await myFile.readAsString());
    List<datapost> mypost = [];

    content['posts']
        .map((value) => mypost.add(datapost.fromjson(json: value)))
        .toList();

    return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }
}
