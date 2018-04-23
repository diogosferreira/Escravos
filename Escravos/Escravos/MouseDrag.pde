//CONTROLA SLIDERS E ANOS
void mouseDragged() {
  traficadosGeral = 0;
  mortosGeral = 0;


  //CURSOR EM MAO
  if (mouseX > (rectXmin + 18) + width/2 && mouseX < ((rectXmin + rectXmax) - 18) + width/2 && mouseY > ((sliderY + (sliderHeight/2) + 20) - sliderHeight/6) + height/2 && mouseY<((sliderY + (sliderHeight/2)+20) + sliderHeight/6) + height/2) {

    //ESTA PERTO DO SLIDER 1 - MEXE
    if (dist(mouseX, mouseY, (slider1POS + width/2), (sliderY + 74) + height/2) < 15 && dist(mouseX, mouseY, (slider2POS + width/2), (sliderY + 74) + height/2) > 30) {
      anoSlider = int(map(mouseX, (rectXmin + 18) + width/2, ((rectXmin + rectXmax) - 20) + width/2, 1566, 1866));
      slider1POS = mouseX - (width/2);
    }

    //ESTA PERTO DO SLIDER 2 - MEXE
    if (dist(mouseX, mouseY, (slider2POS + width/2), (sliderY + 74) + height/2) < 15 && dist(mouseX, mouseY, (slider1POS + width/2), (sliderY + 74) + height/2) > 30) {
      anoSlider2 = int(map(mouseX, (rectXmin + 18) + width/2, ((rectXmin + rectXmax) - 20) + width/2, 1566, 1866));
      slider2POS = (mouseX - (width/2));
    }


    //ATUALIZAR VALORES GERAIS
    //for (Ano ano : anos.values()) {
    //  if (ano.ano>=anoSlider && ano.ano <=anoSlider2) {
    //    traficadosGeral += ano.traficados;
    //    mortosGeral += ano.mortos;

    //  }
    //}
  }
}