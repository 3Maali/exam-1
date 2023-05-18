import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/data.dart';

class userData {
Handler get handler {
 final router = Router()

  ..post('/data', data);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}