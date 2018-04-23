void detetaHovers() {

  //——————————————————————
  //——————————————————————
  //——————————————————————
  // HOVER NAS VIAGENS POR PAIS
  if (mouseX > (rectXmin) + width/2 && mouseX < ((rectXmin + rectXmax)) + width/2 && mouseY > viagensY + height/2 && mouseY < (viagensY + viagensHeight) + height/2) {

    //cursor(HAND);

    //FUNÇÂO DESENHAR LINHAS GRAREDONDO
    pushMatrix();
    translate(-width/5, 0);
    desenhaLinhasNacionalidades();
    popMatrix();
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