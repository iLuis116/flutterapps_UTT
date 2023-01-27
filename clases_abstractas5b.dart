
void main(List<String> arguments) {

    final unCuadrado = Cuadrado();
      print('El area de unCuadrado es: ${unCuadrado.area}');
}

  abstract class FiguraGeometrica{
      double? area;
      double calcularArea();
  }
    class Cuadrado implements FiguraGeometrica{
      @override
      double? area;

      @override
        double calcularArea(){
          double lado = 12.5;
          return lado * lado;
    }
  }