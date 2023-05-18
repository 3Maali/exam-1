import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../customResponse/cusotmR.dart';
/*Description: This endpoint should delete an image file by its name.
Functionality: Search for the image file with the specified name in the project directory and delete it. Return a response indicating the success or failure of the operation*/

deleteImage(Request req) async {
  try {
    final contentType = MediaType.parse(req.headers["Content-Type"]!);

    print(contentType.mimeType);
    if (contentType.mimeType != 'image/png' &&
        contentType.mimeType != 'image/jpeg') {
      return Response.forbidden("not stored image ");
    }

    final name = req.headers["name"];

    final file = File('bin/images/$name.${contentType.subtype}');

    if (file.existsSync()) {
      file.deleteSync();
    }
 return customResponse().sucessResponse(msg: "done  !");
  } catch (e) {
    print(e);

    return customResponse().errorResponse(msg: "not ");
  }

}
