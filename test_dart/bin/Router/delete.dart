
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/deleteImage.dart';

class delete {
Handler get handler {
 final router = Router()

  ..post('/display_data', deleteImage);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}