void detetaHovers() {

  //——————————————————————
  //——————————————————————
  //——————————————————————
  // HOVER NAS VIAGENS POR PAIS
  if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > viagensY + height/2 && mouseY < (viagensY + viagensHeight) + height/2) {

    // BARRAS INDICADORAS ANOS SLIDERS PEQUENOS




    if (mouseX > (rectXmin + 40) + width/2 && mouseX < ((rectXmin + rectXmax) - 20) + width/2 && mouseY > viagensY + height/2 && mouseY < (viagensY + viagensHeight) + height/2) {

      int anoMouse = int(map(mouseX, (rectXmin + 40) + width/2, ((rectXmin + rectXmax) - 20) + width/2, anoSlider, anoSlider2));
      int hoverMouseAnoPortugal = 0;
      int hoverMouseAnoEspanha = 0;
      int hoverMouseAnoHolanda = 0;
      int hoverMouseAnoInglaterra = 0;
      int hoverMouseAnofranca = 0;

      println(anoMouse +   "   anoMouse");
      //text(anoMouse, mouseX, (viagensY+ viagensHeight) - 10 );

      strokeWeight(1);
      stroke(200);

      for (Ano ano : anos.values()) {
        if (ano.ano == anoMouse) {
          hoverMouseAnoPortugal = ano.pt;
          hoverMouseAnoEspanha = ano.esp;
          hoverMouseAnoHolanda = ano.hol;
          hoverMouseAnoInglaterra = ano.gb;
          hoverMouseAnofranca = ano.f;
        }
      }


      //TRATAR NUMEROS
      NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.FRENCH);
      String hoverMouseAnoPortugalProcessado = numberFormat.format(hoverMouseAnoPortugal);
      String hoverMouseAnoEspanhaProcessado = numberFormat.format(hoverMouseAnoEspanha);
      String hoverMouseAnoHolandaProcessado = numberFormat.format(hoverMouseAnoHolanda);
      String hoverMouseAnoInglaterraProcessado = numberFormat.format(hoverMouseAnoInglaterra);
      String hoverMouseAnofrancaProcessado = numberFormat.format(hoverMouseAnofranca);


      float textIcrement = (rectXmin + rectXmax) / 7;


      textAlign(LEFT);
      textFont(Font1);
      textSize(13);

      text(hoverMouseAnoPortugalProcessado, (rectXmin + 40), viagensY + 72);
      text(hoverMouseAnoEspanhaProcessado, (rectXmin + 40) + textIcrement + 10, viagensY + 72);
      text(hoverMouseAnoHolandaProcessado, (rectXmin + 40) + 2* textIcrement + 35, viagensY + 72);
      text(hoverMouseAnofrancaProcessado, (rectXmin + 40) + 3* textIcrement + 13, viagensY + 72);
      text(hoverMouseAnoInglaterraProcessado, (rectXmin + 40) + 4* textIcrement, viagensY + 72);


      line(mouseX - (width/2), viagensY + 100, mouseX - (width/2), (viagensY+ viagensHeight) - 30);

      textAlign(CENTER);
      rectMode(CENTER);
      fill(255);

      rect(mouseX - (width/2), (viagensY+ viagensHeight) - 14, 35, 15, 2);
      fill(0);

      textFont(Font2);
      textSize(12);
      text(anoMouse, mouseX - (width/2), (viagensY+ viagensHeight) - 10);
    }

    //FUNÇÂO DESENHAR LINHAS GRAREDONDO
    pushMatrix();
    translate(-width/5, 0);
    desenhaLinhasNacionalidades();
    popMatrix();
  } 




  // HOVER PERCENTAGEM
  if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > percentagemY + height/2 && mouseY < (percentagemY + percentagemHeight) + height/2) {

    if (mouseX > (rectXmin + 40) + width/2 && mouseX < ((rectXmin + rectXmax) - 20) + width/2 && mouseY > percentagemY + height/2 && mouseY < (percentagemY + percentagemHeight) + height/2) {

      int anoMouse = int(map(mouseX, (rectXmin + 40) + width/2, ((rectXmin + rectXmax) - 20) + width/2, anoSlider, anoSlider2));
      int hoverMouseAnoPercentagem = 0;


      println(anoMouse +   "   anoMouse");
      //text(anoMouse, mouseX, (viagensY+ viagensHeight) - 10 );

      strokeWeight(1);
      stroke(200);

      for (Ano ano : anos.values()) {
        if (ano.ano == anoMouse) {
          int percentagemMortos = (ano.mortos *100) / ano.traficados;
          hoverMouseAnoPercentagem = percentagemMortos;
        }
      }




      //TRATAR NUMEROS
      NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.FRENCH);
      String hoverMouseAnoPercentagemProcessado = numberFormat.format(hoverMouseAnoPercentagem);


      //float textIcrement = (rectXmin + rectXmax) / 7;


      textAlign(LEFT);
      textFont(Font1);
      textSize(13);

      fill(0);
      textAlign(CENTER);
      text(hoverMouseAnoPercentagemProcessado + "%", mouseX - (width/2), (percentagemY + 60));

      line(mouseX - (width/2), percentagemY + 75, mouseX - (width/2), (percentagemY+ percentagemHeight) - 30);

      textFont(Font2);
      textSize(12);
      rectMode(CENTER);
      fill(255);
      rect(mouseX - (width/2), (percentagemY+ percentagemHeight) - 14, 35, 15, 2);
      fill(0);
      text(anoMouse, mouseX - (width/2), (percentagemY+ percentagemHeight) - 10);
    }

    //FUNÇÂO DESENHAR LINHAS GRAREDONDO
    //pushMatrix();
    //translate(-width/5, 0);
    //desenhaLinhaPercentagem();
    //popMatrix();
  }















  //else {
  //  cursor(ARROW);
  //}


  //——————————————————————
  //——————————————————————
  //——————————————————————
  // HOVER PERCENTAGEM DE MORTES
  //if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > percentagemY + height/2 && mouseY < (percentagemY + percentagemHeight) + height/2) {
  //  //FUNÇÂO DESENHAR LINHA ERCENTAGEM GRAREDONDO

  //  cursor(HAND);
  //} else {
  //  cursor(ARROW);
  //}


  //——————————————————————
  //——————————————————————
  //——————————————————————
  //CURSOR EM MAO SLIDER
  //if (mouseX > (rectXmin + 18) + width/2 && mouseX < ((rectXmin + rectXmax) - 18) + width/2 && mouseY > ((sliderY + (sliderHeight/2) + 20) - sliderHeight/6) + height/2 && mouseY<((sliderY + (sliderHeight/2)+20) + sliderHeight/6) + height/2) {
  //  cursor(HAND);
  //} else {
  //  cursor(ARROW);
  //}
}





void escolheCursor () {
  if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > viagensY + height/2 && mouseY < (viagensY + viagensHeight) + height/2) {
    cursor(HAND);
  } else if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > percentagemY + height/2 && mouseY < (percentagemY + percentagemHeight) + height/2) {
    cursor(HAND);
  } else if (mouseX > (rectXmin + 18) + width/2 && mouseX < ((rectXmin + rectXmax) - 18) + width/2 && mouseY > ((sliderY + (sliderHeight/2) + 20) - sliderHeight/6) + height/2 && mouseY<((sliderY + (sliderHeight/2)+20) + sliderHeight/6) + height/2) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}