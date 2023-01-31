import 'package:grpc_flutter_playground/grpc.demo.dart';

void main() {
  final album = Album()
    ..id = 3
    ..title = 'Albums Title';
  print(album);

  final album2 = Album.fromJson('{"1":${albums[0]['id']},"2":"${albums[0]['title']}"}');
  print(album2);
}
