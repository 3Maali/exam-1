
import 'dart:io';

import 'package:http_parser/http_parser.dart';
import 'package:shelf/shelf.dart';

import 'package:shelf/shelf.dart';

import '../customResponse/cusotmR.dart';


/*Description: This endpoint should accept an image file in the request body and save it in the project directory.
Functionality: Save the uploaded image file in the project directory by name from the user and return a response indicating the success or failure of the operation.*/
saveImage(Request req) async {
  try {
    final contentType = MediaType.parse(req.headers["Content-Type"]!);
    print(contentType.mimeType);
    if (contentType.mimeType != 'image/png' &&
        contentType.mimeType != 'image/jpeg') {
      return Response.forbidden("unposted type");
    }

    print(contentType.subtype);

    final body = await req.read().expand((bit) => bit).toList();
    //final id = Random().nextInt(99999999);

    final name = req.headers["name"];

    final file = File('bin/images/$name.${contentType.subtype}');

    await file.writeAsBytes(body);


    print(body);
    return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }

}