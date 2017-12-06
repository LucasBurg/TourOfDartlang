import 'dart:async';

//Normal
//String lookUpVersion() => '0.0.0.1';

Future<String> lookUpVersion() async => '0.0.0.1'; 

Future checkVersion() async {
    String version = await lookUpVersion();    
    print(version);
}

Future main() async {
    checkVersion();
    print("In main: version is ${await lookUpVersion()}");
}