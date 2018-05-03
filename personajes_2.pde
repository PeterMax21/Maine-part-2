void personajes2()
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
  text("Presiona M",30,20);
  text("Presiona N",400,20);
  text("Presiona O",215,170);
  text("Presiona P",30,320);
  text("Presiona Q",400,320);

  text("selecciona a tu personaje",185,50);
  text("jugador 2",250,70);
  
    if(keyPressed)
  {
    if(key=='m'||key=='M')
    {
      J2=Jack;
      jugador2=0;
      sonido2.trigger();
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='n'||key=='N')
    {
      J2=Annie;
      jugador2=1;
      sonido2.trigger();
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='o'||key=='O')
    {
      J2=Pennywise;
      jugador2=2;
      sonido2.trigger();
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='p'||key=='P')
    {
      J2=Brady;
      jugador2=3;
      sonido2.trigger();
      pantalla=5;
    }
  }
   if(keyPressed)
  {
    if(key=='q'||key=='Q')
    {
      J2=Child;
      jugador2=4;
      sonido2.trigger();
      pantalla=5;
    }
  }
}