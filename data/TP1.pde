// Lizarraga Perez Leodan Nilber
// Legajo:95539/2
String estado = "inicio";
int Fotograma;
//
void setup () {
  size (640, 480);
  frameRate(20); 
 
}

void draw () {
  textSize(35);
  background (0,255,123);
  stroke(255,0,0);

  if (estado.equals("inicio") ) {
    //pantalla inicio//
    text ("Arte  Digital", 100, 100);
    text ("Lizarraga Perez Leodan", 200, 230);
    ellipse (320, 320, 100, 100);
  } else if (estado.equals("segunda") ) {
    

    text("Autor de la obra: Onur Sentruk", 20, 350);
    text("Año: 2020", 20, 400);
    text("Nombre de la obra:campañas para Magnum", 20, 450);

    //cambio automatico de la imagen
    Fotograma++;
    if (Fotograma>= 150) {
      estado = "tercera";
      Fotograma = 0;
    }
  } else if ( estado.equals("tercera") ) {
    //Tercera//
    text( "es un diseñador y director Turco ", 20, 250);
    text("con un diseño unico", 20, 300);
    text("en animacion 3D en video", 20, 350);

    Fotograma++;
    if (Fotograma>=150) {
      estado = "cuarta";
      Fotograma=0;
    }
  } else if (estado.equals ("cuarta")) {

    //Cuarta//
    text("Una breve descricion de la obra: ", 20, 200);
    text("campañas para Magnum:", 20, 250);
    text("donde se destaca el chocolate de las paletas.", 20, 300);
    text("una animacion mas que realista", 20, 350);
    text(" de como el liquido cubre una helada paleta.", 20, 400);
    Fotograma++;
    if (Fotograma>= 150) {
      estado = "inicio";
      Fotograma = 0;
    }
    }
  }
  void mousePressed( ) {

    if (estado.equals("inicio")) {
      estado = "segunda";
    } else if (estado.equals( "segunda")) {
      estado = "tercera";
    } else if (estado.equals("tercera")) {
      estado = "cuarta";
    } else if (estado.equals("cuarta")) {
      estado = "inicio";
    }

    if (dist(mouseX, mouseY, 320,320) <80) {
      println ("clik en el circulo"); 
    }
  }
