void titulo()
{
  float sinval=sin(angle);
  println(sinval);
  float gray=map(sinval,-1,1,0,225);
  background(gray);
  angle +=0.03;
  textSize(110);
  text("Maine",150,300);
  textSize(20);
  text("Presiona A",250,520);
  if (key == 'A'|| key== 'a')   
  {
    pantalla=2;
    sonido1.trigger();
  }
}