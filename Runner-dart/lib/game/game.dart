part of Runner;

/**
 * Game controller
 */
class Game extends Sprite
{
  static const BASE_SPEED = 5.0; 
  static const MAX_SPEED = 10.0;
  
  lib.Sky bg;
  lib.EnergyBar energy;
  Level level;
  Player player;
  TextField meters;
  ScorePopup popup;
  bool _pressed = false;
  bool _released = false;
  double _speed = 0.0;
  double _energy = 100.0;
  double _meters = 0.0;
  int _imeters = 0;
  
  Game() {
    mouseEnabled = false;
    onAddedToStage.listen((e) {
      _init();
      _addListeners();
      _fadeIn();
    });
  }
  
  _init() {
    bg = new lib.Sky();
    addChild(bg);
    
    level = new Level();
    addChild(level);
    
    player = new Player();
    addChild(player);
    
    energy = new lib.EnergyBar();
    addChild(energy);
    
    meters = new TextField("0m", new TextFormat("'Arial Black', Arial", 47, 0xffffff, bold:true, align:"right"))
    ..width = 200 ..height = 60 ..alpha = 0;
    addChild(meters);
    
    popup = new ScorePopup();
    popup.x = popup.y = 300;
  }
  
  _resize() {
    var r = stage.contentRectangle;
    level.y = math.max(r.height * 0.7, 720 * 0.7);
    player.x = r.x + r.width * 0.25;
    energy..x = r.x ..y = r.y;
    meters..x = r.x + r.width - meters.width - 20.0 ..y = r.y;
    
    if (player.floor == 0.0) _playerOnFloor();
  }
  
  _fadeIn() {
    // place and fade a white rectangle to reveal the game
    var white = new lib.Fade();
    addChild(white);
    stage.juggler.tween(white, 2)
      ..animate.alpha.to(0)
      ..onComplete = () {
        removeChild(white);
        _restart();
      };
    stage.juggler.tween(meters, 3)
      ..animate.alpha.to(1);
  }
  
  _addListeners() {
    stage.onEnterFrame.listen(_enterFrame);
    
    // set click or touch mode
    if (Multitouch.supportsTouchEvents) {
      Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
      stage.onTouchBegin.listen(_touchBegin);
      stage.onTouchEnd.listen(_touchEnd);
    }
    else {
      stage.onMouseDown.listen(_touchBegin);
      stage.onMouseUp.listen(_touchEnd);
    }
  }
  
  _touchBegin(e) {
    _pressed = true;
  }
  _touchEnd(e) {
    _released = true;
  }
  
  
  _enterFrame(EnterFrameEvent e) {
    // game loop
    var bottom = stage.contentRectangle.y + stage.contentRectangle.height;
    
    if (player.hasFallen) {
      // make sure the player restarts over a platform 
      // then continue running
      if (_energy > 0.0 && player.floor >= bottom) {
        player.y = -100.0;
        level.hold(player);
        if (player.floor < bottom) 
          stage.juggler.delayCall(_restart, 2.0);
        else level.advance(2, e.passedTime);
      }
    }
    
    else {
      if (!player.isDead) {
        // jump
        if (_pressed && _speed > 0) player.jump();
        if (_released) _pressed = _released = false;
      }
      
      // honor real time passing between frames
      var frames = math.min(4.0, e.passedTime / 0.017);
      
      // scroll
      if (_speed >= BASE_SPEED && _speed < MAX_SPEED) 
        _speed += frames / 200.0;
      var adv = _speed * frames;
      level.advance(adv, e.passedTime.toDouble());
      level.hold(player);
      
      if (_speed > 0.0) {
        player.advance(adv, frames);
        if (player.y >= bottom + 200.0)
          player.hasFallen = true;
        
        // energy/score
        if (_energy > 0.0) {
          var hits = level.hitBonus(player);
          if (hits > 0.0)
            _energy = math.min(_energy + 5.0 * hits, 100.0);
          
          _energy -= frames / 20.0;
          energy.bar.scaleX = _energy / 100.0;
          
          _meters += adv / 100.0;
          var m = _meters.toInt();
          if (m != _imeters) {
            _imeters = m;
            meters.text = "${_imeters}m";
          }
        }
        // end of run
        else if (!player.isDead) {
          player.die();
          stage.addChild(popup);
          popup.show(_meters.toInt(), _newGame);
        }
      }
    }
  }
  
  _newGame() {
    level.reset();
    player.reset();
    player._anim.stop();
    player.y = player.floor = 0.0;
    _pressed = _released = false;
    _speed = 0.0;
    _energy = 100.0;
    _meters = 0.0;
    meters.alpha = 0.0;
    level.hold(player);
    _playerOnFloor();
    _fadeIn();
  }
  
  _restart() {
    player.reset();
    _playerOnFloor();
    
    _speed = MAX_SPEED/2;
    stage.juggler.transition(_speed, BASE_SPEED, 1, TransitionFunction.linear, (num value) { _speed = value; } );
  }
  
  _playerOnFloor() {
    player.y = 0;
    level.hold(player);
    player.y = player.floor;
  }
}

