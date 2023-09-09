import 'package:flutter/material.dart';
import 'package:flutter_app/album.dart';
import 'package:flutter_app/test_json.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(body: AlbumApp(),),
));


class AlbumApp extends StatefulWidget {
  const AlbumApp({super.key});

  @override
  State<AlbumApp> createState() => _AlbumAppState();
}

class _AlbumAppState extends State<AlbumApp> {
  late Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    return Center(
      child: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context,snapshot){},
      ),
    );
  }
}