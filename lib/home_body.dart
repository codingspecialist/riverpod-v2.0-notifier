
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/home_page_vm.dart';

class HomeBody extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    int? one = ref.watch(homeProvider);

    if(one == null){
      return Center(child: CircularProgressIndicator());
    }else{
      return Column(
        children: [
          Center(child: Text("$one", style: TextStyle(fontSize: 50))),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(leading: Text("${index+1}"), title: Text("내용"));
                }),
          ),
        ],
      );

    }

  }
}
