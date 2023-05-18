
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/saveImage.dart';

class R_image {
Handler get handler {
 final router = Router()

  ..post('/save_image', saveImage);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}