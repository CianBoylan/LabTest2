class Plane
{

  float px = 200;
  float py = 50;
  float pw= 100;
  float ph= 25;
  float bt = 0;
  
Plane()
{
}
  


void update()
{
   px++;
  
  if(px > width)
  {
    px = -pw;
  }
  
}

void render()
{
  noStroke();
  fill(200);
  rect(px,py,pw,ph);
  triangle(px + pw,py,px+pw,py+ph,px+pw+25,py+ph);
  triangle(px,py,px,py-10,px+10,py);
  rect(px+50,py-25,25,25);
  rect(px+50,py+25,25,25);
  
  fill(0,0,80);
  triangle(px + pw + 4,py + 4,px+pw+4,py+ph-4,px+pw-4+25,py+ph-4);
  rect(px+10, py + 5, 15,15);
  rect(px+35, py + 5, 15,15);
  rect(px+60, py + 5, 15,15);
  rect(px+85, py + 5, 15,15);
}

}