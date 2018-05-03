void personajes()
{
  background(fondo);
  
  pushMatrix();
  image(jack,30,30,150,250);
  popMatrix();
  pushMatrix();
  image(annie,400,30,150,250);
  popMatrix();
  pushMatrix();
  image(pennywise,215,180,150,250);
  popMatrix();
  pushMatrix();
  image(brady,30,330,150,250);
  popMatrix();
  pushMatrix();
  image(child,400,330,150,250);
  popMatrix();
  
  fill(#030303);
  text("Presiona H",30,20);
  text("Presiona J",400,20);
  text("Presiona K",215,170);
  text("Presiona L",30,320);
  text("Presiona G",400,320);
  text("selecciona a tu personaje",185,50);
  text("jugador 1",250,70);
    
  if(keyPressed)
  {
    if(key=='h'||key=='H')
    {
      J1=Jack;
      jugador1=0;
      sonido2.trigger();
      pantalla=4;
    }
  }
  
  if(keyPressed)
  {
    if(key=='j'||key=='J')
    {
      J1=Annie;
      jugador1=1;
      sonido2.trigger();
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='k'||key=='K')
    {
      J1=Pennywise;
      jugador1=2;
      sonido2.trigger();
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='l'||key=='L')
    {
      J1=Brady;
      jugador1=3;
      sonido2.trigger();
      pantalla=4;
    }
  }
   if(keyPressed)
  {
    if(key=='g'||key=='G')
    {
      J1=Child;
      jugador1=4;
      sonido2.trigger();
      pantalla=4;
    }
  }
}