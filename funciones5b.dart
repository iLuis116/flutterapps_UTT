import 'dart:io';

  void main(List<String> arguments) {
   dividir();
   //bool r = esPar();
   print('¿El numero es par?: ${esPar()}');
   //Llamando a funciones que requieren parametros
   saludo1('Sinforosa');
   String nombre = 'Tiburcio';
   saludo1(nombre);
   saludo2('Pancracio', 2023);
   saludo3('Filomena', 2000);
   String? nombre2;
   int? year2;
   saludo3(nombre2, year2);
   saludo4();
   saludo4('Tránsito');
   //saludo4(2022); Se puede enviar almenos el argumento String
   saludo4('Cupertino', 2022);
   //llamando a la funcion de saludo5 con parametros nombrados
   saludo5(); // Como son opcionales los parametros
   saludo5(name: 'Anacleto');
   saludo5(year: 2002, name: 'Anastasia');
   saludo5(year: year2);

   saludo6(name: 'Cleto', mensaje: '¿Qué hay?');
   saludo6(mensaje: 'Qué tal', name: 'Petronila');

  //Uso de funciones Anonimas
   var alumnos = Map();
    alumnos [1] = 'Anacleto';
    alumnos [2] = 'Telésforo';
    alumnos [3] = 'Cupertino';
    alumnos [4] = 'Pantaleon';
    alumnos [5] = 'Pánfilo';
    alumnos [6] = 'Tiburcio';
  //Imprimiendo el map con una funcion anónima
    alumnos.forEach((key, value) => print('Clave: $key, valor: $value'));
  }

  void dividir (){
    int n1 = 12;
    int n2 = 5;
    int cociente;
    int residuo;
    double resultado;

    resultado = n1 / n2;
    print('Resultado de dividir $n1 entre $n2 es $resultado');

    cociente = n1 ~/ n2;
    print('Cociente de dividir entre $n1 y $n2 es $cociente');

    residuo = n1 % n2;
    print('Residuo de la division entre $n1 y $n2 es $residuo');
  
  }
//Función que regresa un valor bool y no recibe parametros.
  bool esPar(){
      var num = 15;
      if(num % 2 == 0){
        return true;
      } else {
        return false;
      }
  }

    void saludo1(String name){
    //Función con un parámetro posicional
      print('Hola $name');
  }
    void saludo2(String name, int year){
    //Función con dos parámetros posicionales
      print('Hola $name, estas en el año $year');
  }
    void saludo3(String? name, int? year){
    //Función con dos parámetros posicionales que podrian tener un valor nulo
    print('Saludo3: Hola $name, estás en el año $year');
  }
    void saludo4([String name = 'desconocido', int year = 2023]){
    //Función con dos parametros opcionales, se le puede enviar 0, 1 o 2 parametros
      print('Saludo4: Hola $name, estas en el año $year');
  }
    void saludo5({String name = 'desconocido', int? year}){
    //Función con dos parametros nombrados, estos parametros son opcionales y se pueden enviar en cualquier orden.
    //Se requieren inicializar o permitir valores null.
      print('Saludo5: Hola $name, estas en el año $year');
    }
    void saludo6({required String name, required String mensaje}){
    //Función con dos parámetros nombrados pero requeridos
      print('Saludo6: $mensaje, $name');
    }
