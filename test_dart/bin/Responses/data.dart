import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../customResponse/cusotmR.dart';
import '../model/datapost.dart';



/*This endpoint should accept person information (e.g., name, age, address) in the request body and save it in a file in the project directory.
Functionality: Save the person information in a file in the project directory and return a response indicating the success or failure of the operation.*/
data(Request req) async {
  try{
  final jsonBody = json.decode(await req.readAsString());
  File jsonFile = File('datapost.json');
  List <datapost>lol = [];

lol.add(jsonBody);
 return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }

}
