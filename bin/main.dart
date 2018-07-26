import 'package:helloWorld/helloWorld.dart' as helloWorld;

import 'dart:convert';

main(List<String> arguments) {
  print('Hello world: ${helloWorld.calculate()}!');
  helloWorld.sayHello();

  String myvalue = 'Hello world';

  // encoded
  List ebytes = UTF8.encode(myvalue);
  String encoded = BASE64.encode(ebytes);

  print('Encoded : ${encoded}');

  List dbytes = BASE64.decode(encoded);
  String decoded = UTF8.decode(dbytes);
  print('decoded: ${decoded}');
}
