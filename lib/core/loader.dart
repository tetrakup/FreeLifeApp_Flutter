import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'storage.dart'; //Bu sayfa yuklenme/bekleme icin yapildi

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
//uyg. ilk calistiginda her ne yapilacaksa buradan yap. baslar
loadApp()async {
  final storage = Storage(); //hafiza yoneticisinden nesne uretiyoruz
  storage.clearStorage();
  
  final firstLaunch = await storage.isFirstLaunch();

  if(firstLaunch){
    //ilk calismaysa tanitima yonlendir.
    GoRouter.of(context).replace("/boarding");
  }
  else{
    //anasayfaya yonlendir
    GoRouter.of(context).replace("/home");
  }
}

@override
  void initState() {
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:CircularProgressIndicator(),
      ),
    );
  }
}