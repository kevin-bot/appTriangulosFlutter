class Triangulo {
  late int ladoA;
  late int ladoB;
  late int ladoC;
  late String tipo;
  late String img;

  Triangulo(this.ladoA, this.ladoB, this.ladoC);

  //Triangulo: todos los lados > 0
  //Equilatero: todos los lados iguales
  //Isoceles: dos lados son iguales
  //Escaleno: todos los datos son diferentes
  void tipoTriangulo(){

    if(ladoA>0 &&  ladoB >0 && ladoC > 0){
      if (ladoA == ladoB && ladoB == ladoC){
        tipo = "Equilatero";
        img = "assets/images/equilatero.png";
      }else if (ladoA==ladoB || ladoA==ladoC || ladoB == ladoC){
        tipo = "Isoceles";
        img = "assets/images/isoceles.png";
      }else{
        tipo = "Escaleno";
        img = "assets/images/escaleno.png";
      }
    }else{
      tipo="No es triangulo";
      img ="assets/images/error.jpeg";
    }

  }
}
