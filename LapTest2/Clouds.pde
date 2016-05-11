class Clouds
{

Clouds()
{
}
 
 float w;
 float h;
 PVector pos;
 float randomspeed;
 
 Clouds(float x, float y, float H, float W, float RS)
  {
    pos = new PVector(x, y);
    h =  H;
    w = W;
    randomspeed = RS;
    
    
  }
  
  void update()
  {
    pos.x += randomspeed;
    
    if (pos.x <= -w)
    {
      pos.x = width + w;
    } 
  }
  
  
  void render()
  {
    fill(255);
    ellipse(pos.x,pos.y,w,h);
    
     
  }
  
}