import 'package:grpc/grpc.dart';
import 'package:grpc_flutter_playground/grpc.demo.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 3000,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = AlbumServiceClient(channel);
  final response =await stub.getAlbums(AlbumRequest());

  // ignore: avoid_print
  print(response);
}
