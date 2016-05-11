void setup()
{
  size(800,800);
  plane = new Plane();
  box = new Box();
  
  for (int i = 0; i < 4; i ++)
  {
    Clouds clouds = new Clouds(
    random(0,width),
    random(50,350),
    random(40,100),
    random(120,180),
    random(-1,-10));
    cloud.add(clouds);
  }
    
  
}

  ArrayList<Clouds> cloud = new ArrayList<Clouds>();
  

Plane plane;
Box box;



void draw()
{
  background(0,255,0);
  noStroke();
  fill(0,0,255);
  rect(0,0, width,height/2);
  
  for(int i = cloud.size() - 1 ; i >= 0   ;i --)
  {
    Clouds clouds = cloud.get(i);
    clouds.update();
    clouds.render();
  }
  
  plane.update();
  plane.render();
  box.update();
  box.render(); 
  
  

  
}



  