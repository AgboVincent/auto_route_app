import 'package:auto_route_app/riverpod/increment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverPod extends StatelessWidget {
   RiverPod({Key? key}) : super(key: key);

   final incrementProvider = ChangeNotifierProvider((ref)=>IncrementNotifier());
    final responseProvider = FutureProvider.autoDispose.family<String, String>((ref, url) async {
    final httpClient =  ref.read(fakeHttpClientProvider);
    return httpClient.get(url);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            //final incrementNotifier = watch(incrementProvider);
            final responseAsyncValue = watch(responseProvider("https://zenonmobile.netlify.app"));
            //return Text(incrementNotifier.value.toString());
            return responseAsyncValue.map(
              data: (_) => Text(_.value),
              loading: (_) => const CircularProgressIndicator(),
              error: (_) => Text(_.error.toString(),
              style:const TextStyle(color: Colors.red),),
              );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read(incrementProvider).increment();
        },
        child:const Icon(Icons.add),
        ),
    );
  }
}

final fakeHttpClientProvider = Provider((ref)=> FakeHttpClient());

class FakeHttpClient{
  Future<String> get(String url) async{
    await Future.delayed(const Duration(seconds: 1));
    return 'Response from $url';
  }
}