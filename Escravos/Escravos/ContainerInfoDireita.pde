// ——————————————————
// ContainerInfoDireita
// ——————————————————


void ContainerInfoDireita() {

  rectXmin = 150;
  rectXmax = (width/2) - 180;

  viagensY = - height/3;

  viagensHeight = height/2.8;
  percentagemHeight = height/3.6;
  sliderHeight = height/8;

  percentagemY = viagensY + viagensHeight + 10;
  sliderY = percentagemY + percentagemHeight + 10;

  textY = - height/2 + 60;

  int incremento = 30;



  //TEXTO
  textAlign(LEFT);



  //ATUALIZAR VALORES GERAIS
  //——————————————————————————
  //——————————————————————————
  traficadosGeral = 0;
  mortosGeral = 0;

  for (Ano ano : anos.values()) {
    if (ano.ano>=anoSlider && ano.ano <=anoSlider2) {
      traficadosGeral += ano.traficados;
      mortosGeral += ano.mortos;
    }
  }

  //TRATAR NUMEROS
  NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.FRENCH);
  String traficadosGeralProcessado = numberFormat.format(traficadosGeral);
  String mortosGeralProcessado = numberFormat.format(mortosGeral);


  textFont(Font1);
  textSize(20);
  fill(83);
  text(traficadosGeralProcessado, rectXmin + 20, textY);
  fill(255, 0, 0);
  text(mortosGeralProcessado, rectXmin + 20, textY + incremento);
  fill(83);
  text(viagensGeral, rectXmin + 20, textY + (incremento*2));
  textFont(Font2);
  fill(112);
  textSize(15);
  text("Escravos traficados", rectXmin + 140, textY);
  text("Escravos mortos", rectXmin + 130, textY + incremento);
  text("Viagens realizadas", rectXmin + 100, textY + (incremento*2));


  rectMode(CORNER);


  //VIAGENS
  stroke(221, 223, 226);
  strokeWeight(1.2);
  fill(255);
  rect (rectXmin, viagensY, rectXmax, viagensHeight, 3);
  fill(0);
  //TEXTO
  textAlign(LEFT);
  textFont(Font1);
  textSize(14);
  text("Número de escravos traficados por país", rectXmin + 20, viagensY + 25);
  strokeWeight(1);
  stroke(221, 223, 226);
  line(rectXmin + 20, viagensY + 35, (rectXmin + rectXmax) - 20, viagensY + 35);
  stroke(0);
  strokeWeight(1.2);
  line(rectXmin + 20, viagensY + 35, (rectXmin + 20) + 267, viagensY + 35);


  float textIcrement = (rectXmin + rectXmax) / 7;

  //LEGENDA PAISES
  textFont(Font2);
  textSize(12);
  fill(83);
  text("Portugal/Brasil", (rectXmin + 40), viagensY + 55);

  text("Espanha/Uruguai", (rectXmin + 40) + textIcrement + 10, viagensY + 55);

  text("Holanda", (rectXmin + 40) + 2* textIcrement + 35, viagensY + 55);
  text("França", (rectXmin + 40) + 3* textIcrement + 13, viagensY + 55);
  text("Inglaterra", (rectXmin + 40) + 4* textIcrement, viagensY + 55);
  noStroke();
  ellipseMode(CORNER);
  fill(88, 208, 188);
  ellipse((rectXmin + 45) - 25, (viagensY + 55) - 11, 15, 15);
  fill(254, 208, 64);
  ellipse(((rectXmin + 45) + textIcrement) - 15, (viagensY + 55) - 11, 15, 15);
  fill(84, 92, 149);
  ellipse((rectXmin + 45) + (2 * textIcrement) + 10, (viagensY + 55) - 11, 15, 15);
  fill(47, 179, 244);
  ellipse((rectXmin + 45) + (3 * textIcrement)-10, (viagensY + 55) - 11, 15, 15);
  fill( 248, 67, 140);
  ellipse((rectXmin + 45) + (4 * textIcrement) - 25, (viagensY + 55) - 11, 15, 15);







  //PERCENTAGEM
  stroke(221, 223, 226);
  strokeWeight(1.2);
  fill(255);
  rect (rectXmin, percentagemY, rectXmax, percentagemHeight, 3);
  fill(0);
  //TEXTO
  textAlign(LEFT);
  textFont(Font1);
  textSize(14);
  text("Percentagem de mortos por ano", rectXmin + 20, percentagemY + 25);
  strokeWeight(1);
  stroke(221, 223, 226);
  line(rectXmin + 20, percentagemY + 35, (rectXmin + rectXmax) - 20, percentagemY + 35);
  stroke(0);
  strokeWeight(1.2);
  line(rectXmin + 20, percentagemY + 35, (rectXmin + 20) + 215, percentagemY + 35);



  //GRAFICO PERCENTAGEM
  //––—————————————————

  //line(rectXmin + 20, percentagemY + 55, rectXmin + 20, percentagemY + percentagemHeight - 55);
  stroke(180);
  line(rectXmin + 40, percentagemY + 75, rectXmin + 40, (percentagemY + percentagemHeight) - 30);
  line(rectXmin + 40, (percentagemY + percentagemHeight) - 30, (rectXmin + rectXmax) - 20, (percentagemY + percentagemHeight) - 30);

  float espacamento = (((rectXmin + rectXmax) - 20) - (rectXmin + 40)) /(anoSlider2 - anoSlider);
  float alturaTotal = ((percentagemY + percentagemHeight) - 30) - (percentagemY + 75);
  incremetoGrafPercentagem = 0;

  //DESENHA GRAFICO PERCENTAGEM
  beginShape();
  for (Ano ano : anos.values()) {


    if (ano.ano>=anoSlider && ano.ano <=anoSlider2) {

      float anoTotal = ano.traficados;
      float percentagemMortos = (ano.mortos *100) / anoTotal;

      //println("espaçamento " + espacamento);
      //println("inscremnrtp " + incremetoGrafPercentagem);


      //noFill();
      stroke(255, 0, 0);
      noFill();
      //strokeWeight(1.2);
      vertex((rectXmin + 40) + (espacamento * incremetoGrafPercentagem), ((percentagemY + percentagemHeight) - 30) - ((percentagemMortos * alturaTotal) / 34));

      //ellipse((rectXmin + 20) + (espacamento * incremetoGrafPercentagem), (percentagemY + percentagemHeight)  - percentagemMortos, 10, 10);
      incremetoGrafPercentagem++;
    }
  }
  endShape();

  //LEGENDA ANOS PERCENTAGEM
  textFont(Font2);
  textSize(12);
  //X
  text(anoSlider, rectXmin + 30, percentagemY + percentagemHeight - 10);
  text(anoSlider2, (rectXmin + rectXmax) - 38, percentagemY + percentagemHeight - 10);

  //Y
  text("34%", rectXmin + 10, (percentagemY + percentagemHeight - 30) - (alturaTotal -5));
  text("17%", rectXmin + 10, (percentagemY + percentagemHeight - 30) - ((alturaTotal / 2) - 5));



  //LEGENDA PERCENTAGEM COR
  textFont(Font2);
  textSize(12);
  //fill(83);
  //text("Percentagem", (rectXmin + 40), percentagemY + 55);
  //noStroke();
  //ellipseMode(CORNER);
  //fill(12, 120, 180);
  //ellipse((rectXmin + 45) - 25, (percentagemY + 55) - 11, 15, 15);




  // GRAFICO PAISES VIAGENS
  // —————————————————————————————————
  // —————————————————————————————————
  // —————————————————————————————————


  float espacamentoViagens = (((rectXmin + rectXmax) - 20) - (rectXmin + 40)) /(anoSlider2 - anoSlider);
  float alturaTotalViagens = ((viagensY + viagensHeight) - 30) - (viagensY + 100);
  float incremetoGrafViagens = 0;



  //LINHAS GRAFICO VIAGENS
  stroke(180);
  line(rectXmin + 40, viagensY + 100, rectXmin + 40, (viagensY + viagensHeight) - 30);
  line(rectXmin + 40, (viagensY + viagensHeight) - 30, (rectXmin + rectXmax) - 20, (viagensY + viagensHeight) - 30);

  text("100m", rectXmin + 7, (viagensY + viagensHeight - 30) - (alturaTotalViagens - 5));
  text("50m", rectXmin + 10, (viagensY + viagensHeight - 30) - ((alturaTotalViagens / 2)));


  for (String n : coresNacionalidades.keySet()) {
    incremetoGrafViagens = 0;
    beginShape();
    //fill(coresNacionalidades.get(n));
    noFill();
    stroke(coresNacionalidades.get(n));


    for (Ano ano : anos.values()) {
      if (ano.ano>=anoSlider && ano.ano <=anoSlider2) {

        vertex((rectXmin + 40) + (espacamentoViagens * incremetoGrafViagens), ((viagensY + viagensHeight) - 30) - ((ano.obterTrafPais(n) *  alturaTotalViagens) / 100000));

        //println(ano.obterPosNacionalidades(n) + " -- > ano nac");
        incremetoGrafViagens++;
      }
    }
    endShape();
  }
  
  
  //LEGENDA ANOS VIAGENS
  textFont(Font2);
  textSize(12);
  //X
  text(anoSlider, rectXmin + 30, viagensY + viagensHeight - 10);
  text(anoSlider2, (rectXmin + rectXmax) - 38, viagensY + viagensHeight - 10);




  // —————————————————————————————————
  // —————————————————————————————————
  // —————————————————————————————————



  //SLIDER
  stroke(221, 223, 226);
  strokeWeight(1.2);
  fill(255);
  rect (rectXmin, sliderY, rectXmax, sliderHeight, 3);
  fill(0);
  textAlign(LEFT);
  textFont(Font1);
  textSize(14);
  text("Escolha o intervalo de tempo que deseja ver", rectXmin + 20, sliderY + 25);
  strokeWeight(1);
  stroke(221, 223, 226);
  line(rectXmin + 20, sliderY + 35, (rectXmin + rectXmax) - 20, sliderY + 35);
  stroke(0);
  strokeWeight(1.2);
  line(rectXmin + 20, sliderY + 35, (rectXmin + 20) + 295, sliderY + 35);
}