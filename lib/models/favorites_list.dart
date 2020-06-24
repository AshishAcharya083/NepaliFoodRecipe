import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesList extends ChangeNotifier {
  List<String> favorites = [];
   SharedPreferences _pref;
 
  initiatePref()async{
    _pref= await SharedPreferences.getInstance();
    if(_pref.getStringList('fav')==null){
    await _pref.setStringList('fav',[]);
    }
  }

  void addIndex(int index) async {
    if(!favorites.contains(index)){
favorites.add(index.toString());
    }else{
      
    }
    
    
    await _pref.setStringList('fav',favorites); 
    notifyListeners();
  }

  int get favLength {
    return _pref.getStringList('fav').length;
  }
}
