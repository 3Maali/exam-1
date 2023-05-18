
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Responses/display_data.dart';
import '../Responses/updatedata.dart';
import 'R_image.dart';
import 'delete.dart';
import 'display.dart';
import 'info.dart';
import 'update_user.dart';
import 'userData.dart';




class B_roter {
 Handler get handler {
    final router = Router()
    //..mount('/auth' , Autho().handler)

    
    ..mount("/info", info().handler)
    ..mount("/image", R_image().handler) 
    ..mount("/user", userData().handler)
    ..mount("/display", display().handler)
    ..mount('/delete' ,delete().handler )
    ..mount('/update' , update_user().handler)



    ..all('/<name|.*>' , (Request _){

      return Response.notFound("not found !!");
    });

    return router;
  }
}