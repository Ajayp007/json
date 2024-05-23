import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/albums/provider/album_provider.dart';
import 'package:untitled/screen/comments/provider/comment_provider.dart';
import 'package:untitled/screen/country/provider/country_provider.dart';
import 'package:untitled/screen/photos/provider/photos_provider.dart';
import 'package:untitled/screen/post/provider/post_provider.dart';
import 'package:untitled/screen/todos/provider/todos_provider.dart';
import 'package:untitled/screen/user/provider/user_provider.dart';
import 'package:untitled/utils/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PostProvider()),
        ChangeNotifierProvider.value(value: CommentProvider()),
        ChangeNotifierProvider.value(value: AlbumProvider()),
        ChangeNotifierProvider.value(value: PhotosProvider()),
        ChangeNotifierProvider.value(value: TodosProvider()),
        ChangeNotifierProvider.value(value: UserProvider()),
        ChangeNotifierProvider.value(value: CountryProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: appRoutes,
      ),
    ),
  );
}
