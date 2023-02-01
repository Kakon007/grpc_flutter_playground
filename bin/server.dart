import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_playground/grpc.demo.dart';

class AlbumService extends AlbumServiceBase {
  @override
  Future<AlbumResponse> getAlbums(
      ServiceCall call, AlbumRequest request) async {
    final albumList = albums
        .map((album) =>
            Album.fromJson('{"1":"${album['id']}","2":"${album['title']}" }'))
        .toList();
    return AlbumResponse()..albums.addAll(albumList);
  }
}

void main() {
  final server = Server([AlbumService()]);
  server.serve(port: 3000);
  // ignore: avoid_print
  print('Server listening on port ${server.port}...');
}
