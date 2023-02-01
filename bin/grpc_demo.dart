import 'package:grpc_flutter_playground/grpc.demo.dart';

void main() {
  final album = Album()
    ..id = 3
    ..title = 'Albums Title';
  // ignore: avoid_print
  print(album);

  final album2 =
      Album.fromJson('{"1":${albums[0]['id']},"2":"${albums[0]['title']}"}');
  // ignore: avoid_print
  print(album2);
  // ignore: deprecated_member_use_from_same_package, avoid_print
  print(album2.clone());
  // ignore: avoid_print
  print(
    // ignore: deprecated_member_use_from_same_package
    album2.copyWith((album) {
      album.setField(1, 4);
    }),
  );
}
