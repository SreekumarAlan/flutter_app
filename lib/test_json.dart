import 'dart:convert';
import 'package:flutter_app/album.dart';
import 'package:http/http.dart' as http;
void main()async {
  var json = await getJson();
  print(json.body);
  var albumlist = await fetchAlbum();
  print(albumlist);
}

Future<http.Response> getJson() async {
  var response = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return response;
}
Future<List<Album>> fetchAlbum() async {
  http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  List<dynamic> albums = jsonDecode(response.body);
  var album = Album.fromJson(albums[2]);
  print(album.title);
  List<Album> albumList = [];
  for (int i=0;i<albums.length; i++){
    //List<Album> albumList =  albumList.add(Album.fromJson(albums[i]));
    albumList.add(Album.fromJson(albums[0]));
  }
  return albumList;

}