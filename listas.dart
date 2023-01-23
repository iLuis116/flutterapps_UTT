void main() {

  //Creando una lista con multiples tipos de datos
  
    List misMascotas = [1, 'Ginger', 'Perro', 'Husky Siberiano', 7.5, 
                        2, 'KC', 'Perro', 'PasaCorrientes', 5.5, 
                        3, 'Moji', 'Gato', 'No se sabe', 1.2];
    print('Lista de mascotas: ');
    print(misMascotas);
    var longitud = misMascotas.length;
    print('Los datos de misMascotas son: $longitud');
  
  //Agrenado datos de otra mascota
  
    misMascotas.add(4);
    misMascotas.add('Moka');
    misMascotas.add('Gato');
    misMascotas.add('Siames');
    misMascotas.add('No se Sabe');
  
    print('La nueva lista de mascotas: ');
    print(misMascotas);
    longitud = misMascotas.length;
    print('El numero de elementos de la lista son: $longitud');
  
    //Trabajando con una lista con un tipo de dato definido
  
    List<int> numeros = [1, 2, 3, 4, 5];
    /* No se puede agregar valores que no sean int
     numeros.add(14.25); */
    if (numeros.isEmpty){
      print('La lista de numeros está vacia');
    } if (numeros.isNotEmpty){
      print('La lista de numeros no está vacia');
    }
    print('La lista de numeros es: ');
    print(numeros);
    print('El primer numero es: ${numeros.first}');
    print('El ultimo numero es: ${numeros.last}');
    print('La posición del elemento 3 es: ${numeros.indexOf(3)}');
    numeros.add(3);
    numeros.add(6);
    numeros.add(7);
    numeros.add(3);
    print('La nueva lista de numeros es: ');
    print(numeros);
    print('La ultima posición del elemento 3 es: ${numeros.lastIndexOf(3)}');
  
  //Agregando elementos de forma dinámica
    List<int> otraLista = [10];
    for(int i=2; i<= 10; i++){
      otraLista.add(10 * i);
    }
    print('La tabla de multiplicar del 10 es: ');
    print(otraLista);

    final masNumeros = List.generate(150, (int index) => index);
    print(masNumeros);
  
}
