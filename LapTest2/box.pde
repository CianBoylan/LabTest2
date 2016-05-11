class Box extends Plane
{
  
  
  Box()
  {
    super();
  }
  
 
  
  float yspeed =2;
  float bx = px + 25;
  float by = py +25;
  float bw = 10;
  float bh = 10;
  float r = random(height/2,height);
  float trigger;
  
  void update()
  {
    
  
    if(trigger == 1)
    {
      fill(255,0,0);
      rect(bx,by,bw,bh);
      
      if (by <= r)
      {
      bx += 1;
      by +=yspeed;
      yspeed += 0.163333;
      
      }
    }
    
   
  
  }
  
  void render()
  {
    
    
   
    if (keyPressed == true )
    {
      trigger = 1;
    }
    
    
    
  }
  
  
  
  
  
}