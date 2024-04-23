import 'package:shared_preferences/shared_preferences.dart';

class Storage {

// Obtain shared preferences.


  Future<bool> isFirstLaunch() async{ //ilk calismaysa: ve await old zaman fonk asenkron olur
    final SharedPreferences storage = await SharedPreferences.getInstance();

    final runned = storage.getBool("runned");

    var counter = storage.getInt("launchCount");


    if (runned == null) {
      counter = 1;
      await storage.setInt("launchCount", 1);
      return true;
    } else {
      await storage.setInt("launchCount", counter! + 1); //bu kisimda c ounter'ın null olmayacagini garanti ediyoruz.
      return false;
    }
  }
  
  firstLaunch() async{ //uyg. ilk calistiginda
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setBool("runned", true);
  }

  setConfig({String? language, bool ? darkMode}) async { //dil modu
    final SharedPreferences storage = await SharedPreferences.getInstance();

    if(language != null){
      await storage.setString("language", language);
      }

    if(darkMode != null){
      await storage.setBool("darkMode", darkMode);
      }
  }

  getConfig()async {//ayarlari hafizadan okuma
    final SharedPreferences storage = await SharedPreferences.getInstance();

    return{
      "language": storage.getBool("darkMode"),
      "darkMode": storage.getBool("language"),
    };
  }


  clearStorage() async{
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();

  }

}