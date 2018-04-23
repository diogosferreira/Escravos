void ContainerGrafRedondo() {
  float widthContainer = width/1.8;
  float heightCointainer = width/1.8;

  int minX = 0 ;
  int minY = 0;


  stroke(221, 223, 226);
  strokeWeight(1.2);
  fill(255);
  rectMode(CENTER);
  rect (minX, minY, widthContainer, heightCointainer, 3);

  fill(0);
  textAlign(LEFT);
  textFont(Font2);
  text("Escravos traficados", -widthContainer/8, (heightCointainer/2 - 20) );
  text("Escravos mortos", widthContainer/8, (heightCointainer/2 - 20) );
  noStroke();
  ellipseMode(CENTER);
  ellipse( -widthContainer/8 - 15, (heightCointainer/2 - 25), 17, 17);

  fill(255, 0, 0);
  ellipse( widthContainer/8 -15, (heightCointainer/2 - 25), 17, 17);
}