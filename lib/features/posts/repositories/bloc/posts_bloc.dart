import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:blocstatemanagement/features/posts/models/postdataUImodel.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<InitialFetchEvent> (initialFetchEvent);
  }
  CountriesModel posts=CountriesModel();

  FutureOr<void> initialFetchEvent(InitialFetchEvent event, Emitter<PostsState> emit) async{
    var Response=await http.get(Uri.parse('https://reqres.in/api/users?page=1'));

    try{
      print('response: ${Response.body}');
      if(Response.statusCode==200){
        posts = CountriesModel.fromJson(jsonDecode(Response.body) as Map<String,dynamic>);
      }
      else{
        print('error in api');
      }

      emit(DisplayFetchedState(posts: posts));
    }
    catch(e){
      print(e.toString());
    }
  }
}