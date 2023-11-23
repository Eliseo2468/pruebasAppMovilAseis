import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
void main(){
  group("primera prueba", () {
    // FlutterDriver driver;
    late FlutterDriver driver;
     setUpAll(() async{
      driver = await FlutterDriver.connect();
     });

     //para login
     final campoCorreo = find.byValueKey('campoCorreo');
     final campoContra = find.byValueKey('campoContra');
     final btnIniciarSesion = find.byValueKey('botonAceptar');

      test('Iniciar sesion', () async{
       await driver.tap(campoCorreo);
       await driver.enterText("sd20007@ues.edu.sv");
       await driver.tap(campoContra);
       await driver.enterText("Minerva.23");
       await driver.waitFor(btnIniciarSesion);
       await driver.tap(btnIniciarSesion);

      });
     
  });

    group("segunda prueba", () {
    // FlutterDriver driver;
    late FlutterDriver driver;
     setUpAll(() async{
      driver = await FlutterDriver.connect();
     });

     //para olvidar contra
     final olvidarContra = find.byValueKey('olvidarContra');
     final btnEnviar = find.byValueKey('btnEnviar');
     final campoCorreoRe = find.byValueKey('campoCorreoRe');
     final contraseniaaRe = find.byValueKey('contraseniaaRe');
     final contraseniaaRe2 = find.byValueKey('contraseniaaRe2');

      test('olvidar contra', () async{
       await driver.tap(olvidarContra);
       await driver.tap(campoCorreoRe);
       await driver.enterText("sd20007@ues.edu.sv");
       await driver.tap(contraseniaaRe);
       await driver.enterText("Minerva.23");
       await driver.tap(contraseniaaRe2);
       await driver.enterText("Minerva.23");
       await driver.waitFor(btnEnviar);
       await driver.tap(btnEnviar);

      });
     
  });
}

