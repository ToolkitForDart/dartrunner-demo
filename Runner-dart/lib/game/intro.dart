part of Runner;

/**
 * Intro logic, extending the Intro symbol created in Flash Pro
 */
class Intro extends lib.Intro 
{
  Intro() {
    mcScore.txtLabel.text = "";
  }
  
  // advance is the method, similar to EnterFrame event, that is called on MovieClips for updating 
  void advance(num deltaTime) {
    super.advance(deltaTime);
    
    _move(cloud0, deltaTime * 15);
    _move(cloud1, deltaTime * 10);
    _move(cloud2, deltaTime * 5);
    _move(cloud3, deltaTime * 20);
  }
  
  _move(DisplayObject cloud, num dx) {
    cloud.x -= dx;
    if (cloud.x < 0) cloud.x = 1140; 
  }
  
  _resize() {
    legal.y = stage.contentRectangle.y + stage.contentRectangle.height;
  }
}