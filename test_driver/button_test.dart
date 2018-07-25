//  THis is the test of the instrumented app that performs the desired function
//  It needs to have the same name as the system under test  (button.dart) and suffix
//  _test.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){

  group('Click Button', (){
    FlutterDriver driver;
    
    setUpAll(()async{
      print('Setupall');
      driver = await FlutterDriver.connect();
    });
    
    tearDownAll(() async{
      if(driver != null) {
        print('teardownAll');
        await driver.close();
      }
    });
    
    test('Click', () async{
      //  Take a look at https://docs.flutter.io/flutter/flutter_driver/CommonFinders-class.html for the API of find (a constant of type CommonFinders)
      await driver.tap(find.byType("FlatButton"));

    });
  });
}