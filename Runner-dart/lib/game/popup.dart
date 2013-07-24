part of Runner;

/**
 * End of game
 */
class ScorePopup extends lib.Popup
{
  Function _callback;
  
  ScorePopup() {
    visible = false;
    
    if (Multitouch.supportsTouchEvents) onTouchEnd.listen(_click);
    else onMouseClick.listen(_click);
  }
  
  _click(e) {
    var r = stage.contentRectangle;
    stage.juggler.tween(this, 0.4, TransitionFunction.easeInBack)
    ..animate.y.to(r.y + r.height + 100)
    ..onComplete = () {
      visible = false;
      if (_callback != null) _callback();
      _callback = null;
    };
  }
  
  show(int score, Function callback) {
    _callback = callback;
    txtScore.text = "${score}m";
    
    var r = stage.contentRectangle;
    y = -100;
    x = r.x + r.width / 2;
    visible = true;
    mouseEnabled = false;
    
    stage.juggler.delayCall(() {
      stage.juggler.tween(this, 0.4, TransitionFunction.easeOutBack)
      ..animate.y.to(r.y + r.height / 2)
      ..onComplete = () => mouseEnabled = true;
    }, 1.5);
  }
}