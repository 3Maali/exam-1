import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/updatedata.dart';

class update_user {
Handler get handler {
 final router = Router()

  ..post('/update_data', updatedata);

//final pipline = Pipeline().addMiddleware(check_image()).addHandler(router);

 return handler;

}
}