import 'package:shared_preferences/shared_preferences.dart';

class Storage {

// Obtain shared preferences.


  Future<bool> isFirstLaunch() async{ //ilk calismaysa: ve await old zaman fonk asenkron olur
    final SharedPreferences storage = await SharedPreferences.getInstance();

    final runned = storage.getBool("runned");

    var counter = storage.getInt("launchCount");

    if(counter== null){
      
    }

    if (runned == null) {
      return true;
    } else {
      return false;
    }
  }
  
  firstLaunch() async{
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setBool("runned", true);
  }

  clearStorage() async{
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();

  }

}