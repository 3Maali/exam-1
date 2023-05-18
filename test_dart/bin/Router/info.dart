
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/sendInfo.dart';

class info {
Handler get handler {
 final router = Router()

  ..post('/send_info', sendInfo);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}