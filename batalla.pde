void batalla()
{
  background(fondo);
  
   if(jugador1==0)
   {
    pushMatrix();
    image(jack,40,150,250,350);
    popMatrix();
    
    Jack.barra();
   }
   if(jugador1==1)
   {
    pushMatrix();
    image(annie,40,150,250,350);
    popMatrix();
    
    Annie.barra();
   }
   if(jugador1==2)
   {
    pushMatrix();
    image(pennywise,40,150,250,350);
    popMatrix();
    
    Pennywise.barra();
   }
   if(jugador1==3)
   {
    pushMatrix();
    image(brady,40,150,250,350);
    popMatrix();
    
    Brady.barra();
   }
   if(jugador1==4)
   {
    pushMatrix();
    image(child,40,150,250,350);
    popMatrix();
    
    Child.barra();
   }
   if(jugador2==0)
   {
    pushMatrix();
    image(jack,310,150,250,350);
    popMatrix();
    
    Jack.barra();
   }
   if(jugador2==1)
   {
    pushMatrix();
    image(annie,310,150,250,350);
    popMatrix();
    
    Annie.barra();
   }
   if(jugador2==2)
   {
    pushMatrix();
    image(pennywise,310,150,250,350);
    popMatrix();
    
    Pennywise.barra();
   }
   if(jugador2==3)
   {
    pushMatrix();
    image(brady,310,150,250,350);
    popMatrix();
    
    Brady.barra();
   }
   if(jugador2==4)
   {
    pushMatrix();
    image(child,310,150,250,350);
    popMatrix();
    
    Child.barra();
   }
   fill(#030303);
   textSize(15);
   text("Jugador 1 ataca con T",60, 530);
   text("Jugador 2 ataca con S",330, 530);
   
   
     if(turno==0)
     {
       if(key=='t'||key=='T')
       {
         J2.vida -=J1.ataque;
         sonido3.trigger();
         turno=1;
       }
     }
     if(turno==1)
     {
       if(key=='s'||key=='S')
       {
         J1.vida -=J2.ataque;
         sonido3.trigger();
         turno=0;
       }
     }
     
    if(J1.vida<=0 || J2.vida<=0)
    {
      pantalla=6;
      sonido2.trigger();
    }

}



  