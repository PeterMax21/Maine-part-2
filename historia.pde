void historia()
{
  background(fondo);
  textSize(20);
  fill(#030303);
  text("En el estado de Maine habitan las personas y seres más perversos que el mundo haya conocido,con habilidades increíbles esperando el momento para atacar.",80,80,500,400);
  text("Durante un tiempo estos seres estuvieron alejados unos de otros, causando terror y asesinando en los lugares donde habitaban, creyendo que eran los únicos en el mundo.",80,250,500,400);
  text("Ahora estos seres se enfrentan a algo contra lo que desconocían completamente, que no son los únicos.",80,400,500,400);
  text("¡Que comience el juego!",180,540);
  textSize(15);
  text("Presiona B",250,560);
  if (key == 'B'|| key == 'b')
  {
    pantalla=3;
  }
}