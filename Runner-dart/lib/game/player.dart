part of Runner;

/**
 * Player logic
 */
class Player extends DisplayObjectContainer
{
  bool isDead = false;
  bool hasFallen = false;
  
  double _floor = 0.0;
  double _lastFloor = 0.0;
  bool _jumping = false;
  bool _falling = false;
  double _vy = 0.0;
  lib.Player _anim;
  //TextField _debug;
  
  get floor => _floor;
  set floor(double value) {
    if (value == _floor) return;
    _lastFloor = _lastFloor == 0.0 ? value : _floor;
    _floor = value;
  }
  
  Player() {
    _anim = new lib.Player();
    _anim.scaleX = _anim.scaleY = 0.65;
    _anim.gotoAndStop("sit");
    addChild(_anim);
    
    /*_debug = new TextField("sit", new TextFormat("Arial", 14, 0xff0000, bold:true, align:"center"))
    ..background = true
    ..height = 20
    ..x = -50;
    addChild(_debug);*/
  }
  
  _setState(String label, [bool stopped = false]) {
    if (stopped == true) _anim.gotoAndStop(label);
    else _anim.gotoAndPlay(label);
    
    // it is possible to store arbitrary values in MovieClips' "props"
    _anim.props["state"] = label;
    //_debug.text = label;
  }
  
  jump() {
    if (_jumping) return;
    if (_falling && (_lastFloor - y).abs() > 10.0) return;
    _jumping = true;
    _falling = false;
    _vy = -10.0;
    _setState("jump");
  }
  
  die() {
    isDead = true;
    _jumping = false;
    _falling = true;
    floor = stage.contentRectangle.height * 2.0;
    _setState("fall");
  }
  
  reset() {
    isDead = false;
    hasFallen = false;
    _jumping = _falling = false;
    _vy = 0.0;
    _setState("sit");
  }
  
  advance(double dist, double frames) {
    String setAnim = null;
    
    if (y < floor || _vy < 0) {  
      // interpolate
      int f = frames.toInt();
      double r = frames - f.toDouble();
      double dy = 0.0;
      for(int i=0; i<f; i++) {
        _vy += 0.4;
        dy += _vy;
      }
      _vy += 0.4 * r;
      dy += _vy * r;
      y += dy;
      
      // start falling?
      if (!_falling && !_jumping && _vy > 0.0) {
        _falling = true;
        setAnim = "fall";
      }
      // hit the floor
      else if (y >= floor && _vy >= 0.0) {
        setAnim = "floor";
        y = floor;
        _vy = 0.0;
        _jumping = false;
        _falling = false;
      }
    }
    else if (_falling && _vy == 0.0) {
      _falling = false;
      y = floor;
      setAnim = "run";
    }
    
    if (setAnim != null) 
      _setState(setAnim);
  }
}

