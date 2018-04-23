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
    
    int centroGX = width/2 + centroGraficoPrincipalX, centroGY = height/2;
    if(dist(mouseX, mouseY, centroGX + ((maxXY + 50) * cos(anguloFim - ((anguloFim - anguloInicio) / 2))), centroGY + ((maxXY + 50)* sin(anguloFim - ((anguloFim - anguloInicio) / 2)))) < 30){
      mostraInfoFacto();
    }
    
    
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
 
  void mostraInfoFacto() {
    fill(0, 255);
    textFont(Font1);
    textSize(12);
    String[] temp = split(this.descricao, "%") ;
    int incremet = 0;
    text(this.anoInicio + " — " + this.anoFim, 0, -20 );
    textFont(Font2);
    textSize(12);
    for(int i = 0; i < temp.length; i ++){
      text(temp[i], 0, 20 * incremet);
      println(temp[i]);
      incremet++;
    }
   
  }
  
}
