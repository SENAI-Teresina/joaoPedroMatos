import 'dart:io';
import 'dart:math';

class Circulo{
  double raio;
  String cor;
  double pi = 3.14;


  Circulo(this.raio, this.cor, this.pi);

  void area(){
    print(pi * raio*raio);
  }
  void perimetro(){
    print(2 * pi * raio);
  }
}

void main(){
  print('digite o raio: ');
  double raio = double.parse(stdin.readLineSync()!);
  print('a area do circulo é');
  Circulo circulo = Circulo(raio, 'verde', pi);
  circulo.area();
  circulo.perimetro();
}