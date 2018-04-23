//
//  MARCOS HISTÓRICOS ADICIONADOS NA CLASSE MARCO
//

ArrayList<Marco> marcos = new ArrayList<Marco>();

void preencheMarcos() {

  Table tabelaFactos = loadTable("tratamento_dados/tabela_factos.csv", "header");

  for (TableRow linha : tabelaFactos.rows()) {
    int anoInicio = linha.getInt(0);
    int anoFim = linha.getInt(1);
    String pais = linha.getString(2);
    String facto = linha.getString(3);
    String descricao = linha.getString(4);
    marcos.add(new Marco(anoInicio, anoFim, pais, facto, descricao));
  }
}

void verificaSeTemMarco() {
  for (Ano ano : anos.values()) {
    for (Marco marco : marcos) {
      if (ano.ano == marco.anoInicio) {
        marco.anguloInicio = ano.angulo;
      }
      if (ano.ano == marco.anoFim) {
        marco.anguloFim = ano.angulo;
        marco.desenhaMarco();
      }
    }
  }
}


//----------------------
HashMap<String, Integer> coresNacionalidades = new HashMap<String, Integer>();

//
//  INICIALIZA HASH MAP NACIONALIDADE, COR
//

void inicializaHashNacionalidadeCor() {
  /*
  String[] nacionalidades = {"Sem informação", "Espanha / Uruguai", "Grã Bretanha", "França", "Portugal / Brasil", "Holanda", "Dinamarca / Bálticos", "E.U.A", "Outros"};
   color[] cores = {
   color(160, 160, 160), 
   color(254, 208, 64), 
   color(248, 67,140), 
   color(47, 179, 244), 
   color(88, 208, 188), 
   color(84, 92, 149), 
   color(255, 40, 40), 
   color(255, 140, 255), 
   color(255, 255, 145)};
   */

  String[] nacionalidades = {"Espanha / Uruguai", "Grã Bretanha", "França", "Portugal / Brasil", "Holanda"};
  color[] cores = {color(252, 186, 45), color(248, 67, 140), color(47, 179, 244), color(88, 208, 188), color(84, 92, 149)};

  for (int i = 0; i < nacionalidades.length; i++) {
    coresNacionalidades.put(nacionalidades[i], cores[i]);
  }
}

//
//  LINHAS NACIONALIDADES
//

void desenhaLinhasNacionalidades() {
  for (String n : coresNacionalidades.keySet()) {
    beginShape();
    noFill();
    strokeWeight(1.5);
    stroke(coresNacionalidades.get(n));
    for (Ano ano : anos.values()) {
      vertex(ano.obterPosNacionalidades(n) * cos(ano.angulo), ano.obterPosNacionalidades(n) * sin(ano.angulo));
    }
    endShape();
  }
}