class Marco {

  int anoInicio, anoFim;
  String pais, facto, descricao;//nd, esp, gb, f, pt, hol, din, eua, out

  Marco(int ai, int af, String p, String f, String d) {
    this.anoInicio = ai;
    this.anoFim = af;
    this.pais = p;
    this.facto = f;
    this.descricao = d;
  }

  void desenhaMarco(float angulo) {
    noFill();
    rectMode(CENTER);
    stroke(coresNacionalidades.get(this.pais));
    fill(coresNacionalidades.get(this.pais));
    pushMatrix();
    translate(maxXY * cos(angulo), maxXY * sin(angulo));
    rotate(angulo + HALF_PI);
    float largura = textWidth(this.facto) + 10;
    rect(0, -50, largura, 25);
    line(0, 0, 0, -40);
    fill(255);
    text(this.facto, 0, -50);
    popMatrix();
  }
}
