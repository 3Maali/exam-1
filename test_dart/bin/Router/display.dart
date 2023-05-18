
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/display_data.dart';

class display {
Handler get handler {
 final router = Router()

  ..post('/display_data', display_data);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}