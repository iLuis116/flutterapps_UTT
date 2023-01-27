
import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop = Computadora(marca: 'Allienware', cpu: 'Intel Core i9 10th Gen', ram: 32);
    print('Informacion de la laptop que te venden en internet: $unaLaptop');
      stdout.write('¿Esta computadora es adecuadad para la materia de DMM?: ');
      String? respuesta = stdin.readLineSync();
    if(respuesta !=null){
      if (respuesta.contains('Si')){
          unaLaptop.adecuada = true;
            } else {
            unaLaptop.adecuada = false;
       }
    }
      else {
      print('No se puede saber si la pc es adecuada porque se recibio null');
  }
      print('laptop1 es adecuada para tu materia: ${unaLaptop.esAdecuada}');
      
  unaLaptop.marca = 'lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Informacion de la laptop que te llego a casa: $unaLaptop');
}

  class Computadora{
    //campos
      String? marca;
      String? cpu;
      int? ram;
      bool adecuada = false;
  
//Constructor
  /*Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/

  //Forma corta de escribir el constructor
    Computadora({this.marca, this.cpu, this.ram});

    @override
    String toString(){
      return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM: $adecuada';
    }
  //getter de la variable adecuada
    bool get esAdecuada{
      return adecuada;
    }
  //Setter de la variable adecuada
    set configurarAdecuada(bool valor){
      adecuada = valor;
    }
  }