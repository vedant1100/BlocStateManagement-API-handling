import 'package:blocstatemanagement/features/posts/repositories/bloc/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Displayposts extends StatefulWidget {
  const Displayposts({super.key});

  @override
  State<Displayposts> createState() => _DisplaypostsState();
}

class _DisplaypostsState extends State<Displayposts> {

  final postBloc= PostsBloc();

  @override
  void initState() {
    postBloc.add(InitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts Model')),
      body: BlocConsumer<PostsBloc, PostsState>(
        bloc: postBloc,
        listenWhen: (previous, current) => current is PostActionState,
        buildWhen: (previous, current) => current is !PostActionState,
        listener: (context, state) {
          
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case DisplayFetchedState:
            final successState=state as DisplayFetchedState;
              return Container(
                padding: EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: successState.posts.data?.length,
                  itemBuilder: (context,index){
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),
                            color: Colors.grey[200],
                            child: Column(
                              children: [
                                Text(successState.posts.data![index].firstName!),
                                Text(successState.posts.data![index].lastName!),
                                Text(successState.posts.data![index].email!)
                              ],
                            ),
                          )
                          
                        ],
                      ),
                    );
                  }
                  ),
              );
            default:
            return const SizedBox();
          }
        },
      ),
    );
  }
}
