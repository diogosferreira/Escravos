//——————SLIDER

float rectXmin = 120;
float rectXmax = (width/2) - 150;

float viagensY = - height/3;

float viagensHeight = height/3.2;
float percentagemHeight = height/3.2;
float sliderHeight = height/8;

float percentagemY = viagensY + viagensHeight + 10;
float sliderY = percentagemY + percentagemHeight + 10;

float textY = - height/2 + 30;


float slider1POS = rectXmin + 20;
float slider2POS = (rectXmin + rectXmax) - 20;

int anoSlider = 1566;
int anoSlider2 = 1866;
//passa a 1 vez
boolean flag = true;

float incremetoGrafPercentagem = 0;




//—————————————————————
//—————————————————————
//—————————————————————

//——————SLIDER

//—————————————————————
//—————————————————————
//—————————————————————




void desenhaSlider() {
  if (flag == true) {
    slider1POS = rectXmin + 20;
    slider2POS = (rectXmin + rectXmax) - 20 ;
    flag = false;
  }

  fill(239);
  noStroke();
  rect (rectXmin + 20, sliderY + 70, rectXmax - 40, 7, 10);

  //SLIDERS
  ellipseMode(CENTER);
  fill(0);
  ellipse (slider1POS, sliderY + 74, 15, 15);
  ellipse (slider2POS, sliderY + 74, 15, 15);

  textAlign(CENTER);
  textSize(12);
  //SLIDER 1 TEXTO
  text(anoSlider, slider1POS, sliderY + 60);
  //SLIDER 2 TEXTO
  text(anoSlider2, slider2POS, sliderY + 60);


  //CURSOR EM MAO
  //if (mouseX > (rectXmin + 18) + width/2 && mouseX < ((rectXmin + rectXmax) - 18) + width/2 && mouseY > ((sliderY + (sliderHeight/2) + 20) - sliderHeight/6) + height/2 && mouseY<((sliderY + (sliderHeight/2)+20) + sliderHeight/6) + height/2) {
  //  cursor(HAND);
  //} else {
  //  cursor(ARROW);
  //}
  
  
  
  //CONTROLA OPACIDADE — GRAFICO REDONDO
  //for (Ano ano : anos.values()) {
  //    ano.opacidade = 50;
  //    if (ano.ano>=anoSlider && ano.ano <=anoSlider2) {
  //      ano.opacidade = 255;
  //    }
  //  }
}