import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'package:shelf_router/shelf_router.dart';

import 'Router/B_router.dart';
import 'env/enviro.dart';



void main() async {
  withHotreload(() => createServer());
}


Future<HttpServer> createServer() async {
  // Use any available host or container IP (usually `0.0.0.0`).

  // Configure a pipeline that logs requests.
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(B_roter().handler);

  final server = await serve(handler, enviro().ip, enviro().port);
  print('Server listening on port ${server.port}');

  return server;
}
