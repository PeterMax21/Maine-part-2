import ddf.minim.*;
Minim soundengine;
AudioSample sonido1;
AudioSample sonido2;
AudioSample sonido3;

PImage annie;
PImage pennywise;
PImage brady;
PImage jack;
PImage child;
PImage fondo;

float angle;

PFont titulo;

int seleccionar;

int jugador1;
int jugador2;

int turno=0;
int hp1;
int hp2;

class personaje
{
  String nombre;
  int ataque;
  int defensa;
  int vida;
  
  
  personaje(String nombre_, int ataque_, int defensa_, int vida_)
  {
   nombre= nombre_;
   ataque=ataque_;
   defensa=defensa_;
   vida=vida_;
  } 
  
    void barra()
  {
    fill(#980202);
    rect(50,100,200,20);
    
    fill(#0CCB47);
    rect(50,100,hp1,20);
    hp1=J1.vida;
    
    fill(#980202);
    rect(320,100,200,20);
    
    fill(#0CCB47);
    rect(320,100,hp2,20);
    hp2=J2.vida;
  }
}

personaje Jack;
personaje Annie;
personaje Pennywise;
personaje Brady;
personaje Child;

personaje J1;
personaje J2;

int pantalla= 1;

void setup()
{
  size(600,600);
  
  soundengine = new Minim(this);
  sonido1 = soundengine.loadSample("4. Derry.mp3", 1024);
  sonido2 = soundengine.loadSample("IT.mp3",1024);
  sonido3 = soundengine.loadSample("blip.wav",1024);
  
  fondo= loadImage("fondo.jpg");
  annie = loadImage("Annie1.jpg");
  pennywise = loadImage("pennywise1.jpg");
  brady = loadImage("brady1.jpg");
  jack = loadImage("jack1.jpg");
  child = loadImage("child1.jpg");
  
  Jack=new personaje("Jack",50,60,200);
  Annie=new personaje("Annie",66,73,200);
  Pennywise= new personaje("Pennywise",80,85,200);
  Brady= new personaje("Brady",55,60,200);
  Child=new personaje("Child",45,60,200);
  
  titulo=loadFont("KingthingsTrypewriter2-48.vlw");
  textFont(titulo);
}


void draw()
{
  switch(pantalla)
  {
    case 1:
    titulo();
    break;
    
    case 2:
    historia();
    break;
    
    case 3:
    personajes();
    break;
    
    case 4:
    personajes2();
    break;
    
    case 5:
    batalla();
    break;
    
    case 6:
    background(fondo);
    if(J1.vida<J2.vida)
    {
      textSize(20);
      fill(#030303);
      text("¡Felicidades!, Ganaste Jugador 2",120,300);
      text("presiona espacio",200,320);
    }
    if(J2.vida<J1.vida)
    {
      textSize(20);
      fill(#030303);
      text("¡Felicidades!, Ganaste Jugador 1",120,300);
      text("presiona espacio",200,320);
      
    }
    if(keyPressed)
    {
    
    if(key == 32)
      {
       pantalla= 2;
       Jack.vida =200;
       Annie.vida =200;
       Pennywise.vida =200;
       Brady.vida=200;
       Child.vida=200;
      } 
    }
    break;
  }
  
}