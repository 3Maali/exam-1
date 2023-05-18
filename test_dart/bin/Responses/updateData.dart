import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../customResponse/cusotmR.dart';
import '../model/datapost.dart';
import 'updatedata.dart';


/*Description: This endpoint should accept new person information in the request body and update the existing person information.
Functionality: Read the existing person information from the file, update it with the new information, and save it back to the file. Return a response indicating the success or failure of the operation.*/
 updatedata (Request req)async {

try{
  final jsonBody = json.decode(await jsonFile.readAsString());
 File jsonFile = File('datapost.json');
 //final Map content = json.decode(await jsonFile.readAsString());
        List<datapost> mypost = [];

 content['datapost']
            .map((value) => mypost.add(datapost.fromjson(json: value)))
            .toList();

datapost selectPost = mypost.firstWhere((element) => jsonFile["password"] == jsonBody["password"]);


  
  return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }

}
