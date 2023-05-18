import 'dart:io';

class enviro{
 final ip = InternetAddress.anyIPv4;
// For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');

}