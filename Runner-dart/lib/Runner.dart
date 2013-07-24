library Runner;

import 'dart:html' as html;
import 'dart:math' as math;
import 'package:stagexl/stagexl.dart';
import 'RunnerLib.dart' as lib;

part 'game/intro.dart';
part 'game/level.dart';
part 'game/player.dart';
part 'game/popup.dart';
part 'game/game.dart';

/**
 * Main class
 */
class Runner 
{
  Stage stage;
  RenderLoop renderLoop;
  TextField loading;
  Intro intro;
  Game game;
  
  Runner(String basePath) {
    if (Stage.isMobile) // disable "retina" on mobile
      Stage.autoHiDpi = false; 
    
    // stage setup
    stage = new Stage("stage", html.document.query("#stage"), 1140, 720, 30);
    stage.scaleMode = StageScaleMode.NO_BORDER;
    stage.addEventListener("resize", _resize);
    
    renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
    
    // loading -> _showIntro
    loading = new TextField("LOADING...", new TextFormat("Arial", 16, 0));
    stage.addChild(loading);
    _resize(null);
    
    lib.initResources("./")
      ..load().then(_showIntro).catchError(_loadError)
      ..onProgress.listen(_loadProgress);
  }

  void _loadError(e) {
    print("One or more resource failed to load.");
  }

  void _loadProgress(e) {
    // total: lib.resources.resources.length
    // loaded: lib.resources.finishedResources.length
  }
  
  _showIntro(result) {
    stage.removeChild(loading);
    loading = null;
    
    intro = new Intro();
    intro.addEventListener("startGame", _startGame); // dispatched by the timeline script
    stage.addChild(intro);
    
    _resize(null);
  }
  
  _startGame(e) {
    if (intro != null) {
      stage.removeChild(intro);
      intro = null;
    }
    
    // how to play hint
    var r = stage.contentRectangle;
    var tip = new TextField("HINT: CLICK/TAP TO JUMP", new TextFormat("Arial", 16, 0x003399, align:"center"))
      ..width = 300
      ..height = 30
      ..x = r.x + r.width/2 - 150
      ..y = r.y + r.height/2 - 100;
    
    stage.addChild(tip);
    stage.juggler.tween(tip, 1)
    ..animate.alpha.to(0)
    ..delay = 3
    ..onComplete = () {
      stage.removeChild(tip);
      tip = null;
    };

    // start game after a little delay (let the GC do its work)
    stage.juggler.delayCall(() {      
      game = new Game();
      stage.addChildAt(game, 0);
      _resize(null);
    }, 2);
  }
  
  _resize(e) {
    // general layout
    if (loading != null) {
      var r = stage.contentRectangle;
      loading..x = r.x+10 ..y = r.y+10;
    }
    else if (intro != null) intro._resize();
    else if (game != null) game._resize();
  }
}
