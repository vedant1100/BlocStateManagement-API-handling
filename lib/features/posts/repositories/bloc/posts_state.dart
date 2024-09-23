part of 'posts_bloc.dart';

@immutable
sealed class PostsState {}

final class PostsInitial extends PostsState {} 

abstract class PostActionState extends PostsState{} //this is the state used for listeners

class DisplayFetchedState extends PostsState{
  CountriesModel posts;

  DisplayFetchedState({required this.posts});
}