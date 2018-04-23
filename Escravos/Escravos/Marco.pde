class Marco {

  int anoInicio, anoFim;
  String pais, facto, descricao;
  float anguloInicio, anguloFim;

  Marco(int ai, int af, String p, String f, String d) {
    this.anoInicio = ai;
    this.anoFim = af;
    this.pais = p;
    this.facto = f;
    this.descricao = d;
  }

  void desenhaMarco() {
    noFill();
    rectMode(CENTER);
    stroke(coresNacionalidades.get(this.pais));
    fill(coresNacionalidades.get(this.pais));
    pushMatrix();
    translate(maxXY * cos(anguloFim - ((anguloFim - anguloInicio) / 2)), maxXY * sin(anguloFim - ((anguloFim - anguloInicio) / 2)));
    rotate(anguloFim - ((anguloFim - anguloInicio) / 2) + HALF_PI);
    float largura = textWidth(this.facto) + 10;
    rect(0, -50, largura, 25);
    fill(255);
    text(this.facto, 0, -50);
    popMatrix();
    // AREA
    
    fill(coresNacionalidades.get(this.pais), 30);
    noStroke();
    beginShape();
    vertex(maxXY * cos(anguloInicio), maxXY * sin(anguloInicio));
    vertex(minXY * cos(anguloInicio), minXY * sin(anguloInicio));
    vertex(minXY * cos(anguloFim), minXY * sin(anguloFim));
    vertex(maxXY * cos(anguloFim), maxXY * sin(anguloFim));
    endShape();
  }
}
