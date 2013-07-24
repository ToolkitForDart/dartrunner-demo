part of Runner;

class Level extends Sprite
{
  static const DEBUG = false;
  final math.Random rand = new math.Random();
  int _length = 0;
  double _advance = 0.0;
  
  // we'll be reusing symbols a lot to avoid needless GC work
  final List<Platform> platforms = new List<Platform>();
  final List<lib.Platform1> pool1 = new List<lib.Platform1>();
  final List<lib.Platform2> pool2 = new List<lib.Platform2>();
  final List<lib.Platform3> pool3 = new List<lib.Platform3>();
  final List<Bonus> drinks = new List<Bonus>();
  
  Level() {
    // pre-populating the pools
    pool1.add(new lib.Platform1());
    pool1.add(new lib.Platform1());
    pool2.add(new lib.Platform2());
    pool2.add(new lib.Platform2());
    pool3.add(new lib.Platform3());
    pool3.add(new lib.Platform3());
    
    onAddedToStage.listen((e) => _updatePlatforms());
  }
  
  reset() {
    // new game, clear everything
    for(Platform p in platforms) {
      if (p.design != null) {
        removeChild(p.design);
        if (DEBUG) removeChild(p);
        p.design = null;
      }
      if (p.bonus != null) {
        removeChild(p.bonus);
        drinks.add(p.bonus);
        p.bonus = null;
      }
    }
    platforms.removeRange(0, platforms.length);
    x = _advance = 0.0;
    _length = 0;
    _updatePlatforms();
  }
  
  hold(Player player) {
    // find closest platform under the player
    if (player.isDead)
      return stage.contentRectangle.height * 2.0;
    
    var px = player.x;
    var py = player.y - y;
    Platform found = null;
    
    for(Platform p in platforms) {
      var minx = p.x - _advance;
      if (minx - 30.0 < px && minx + p.size + 30.0 > px && py <= p.y + 10.0 
          && (found == null || found.y > p.y)) {
        found = p;
      }
    }
    
    if (found != null) player.floor = y + found.y;
    else player.floor = stage.contentRectangle.height * 2.0;
  }
  
  int hitBonus(Player player) {
    // catch bonuses
    var px = player.x + _advance;
    int cpt = 0;
    
    for(Platform p in platforms) {
      if (p.bonus != null) {
        if ((p.bonus.x - px).abs() < 40.0) {
          var dy = p.bonus.y + y - player.y;
          if (dy < -20.0 && dy > -220.0) {
            removeChild(p.bonus);
            drinks.add(p.bonus);
            p.bonus = null;
            cpt++;
          }
        }
      }
    }
    return cpt;
  }
  
  advance(num dist, num elapsedTime) {
    // scroll level
    _advance += dist;
    x = -_advance;
    _updatePlatforms();
    _updateBonus(elapsedTime);
  }
  
  _updateBonus(num elapsedTime) {
    for(Platform p in platforms) {
      if (p.bonus != null) p.bonus.step(elapsedTime);
    }
  }
  
  _updatePlatforms() {
    // remove platforms out of screen
    while (platforms.length > 0 && platforms[0].right < -x) {
      var p = platforms[0];
      platforms.removeAt(0);
      if (p.design != null) {
        removeChild(p.design);
        if (DEBUG) removeChild(p);
        p.design = null;
      }
      if (p.bonus != null) {
        removeChild(p.bonus);
        drinks.add(p.bonus);
        p.bonus = null;
      }
    }
    
    // do we need a new section?
    var right = stage.contentRectangle.width - x + 100.0;
    if (_length >= right) 
      return;
    
    // create a random section
    int index = rand.nextInt(3);
    Sprite section = null;
    switch (index) {
      case 0:
        section = _getPool(pool1);
        if (section == null) {
          section = new lib.Platform1(); pool1.add(section);
          if (DEBUG) print("new Platform1");
        }
        pool1.add(section);
        break;
      case 1: 
        section = _getPool(pool2);
        if (section == null) {
          section = new lib.Platform2(); pool2.add(section); 
          if (DEBUG) print("new Platform2");
        }
        break;
      case 2: 
        section = _getPool(pool3);
        if (section == null) {
          section = new lib.Platform3(); pool3.add(section); 
          if (DEBUG) print("new Platform3");
        }
        break;
      default:
        return;
    }
    
    // add new section
    _length += 200;
    var offset = _length;
    var flip = rand.nextBool();
    addChild(section);
    
    // find platforms placeholders
    lib.Placeholder first = null;
    lib.Placeholder last = null;
    var hits = new List<lib.Placeholder>();
    for(int i=section.numChildren-1; i>= 0; i--) {
      var child = section.getChildAt(i);
      if (child is lib.Placeholder) {
        hits.add(child);
        if (!DEBUG) child.visible = false;
        if (first == null || first.x > child.x) first = child;
        if (last == null || last.x < child.x) last = child;
      }
    }
    
    // create platforms 
    if (hits.length > 0) {
      var sectionWidth = last.x + last.width;
      
      Platform lastP = null;
      for(var hit in hits) {
        var px = flip ? sectionWidth - hit.x - hit.width : hit.x;
        var p = new Platform(offset + px, hit.y, hit.width.toDouble());
        platforms.add(p);
        if (DEBUG) addChild(p);
        if (lastP == null || lastP.x < p.x) lastP = p;
        
        _createBonus(p);
      }
      lastP.design = section;
      
      section.scaleX = flip ? -1 : 1;
      section.x = flip ? offset + sectionWidth : offset;
      _length += sectionWidth.round();
    }
  }
  
  _createBonus(Platform p) {
    if (p.x < 500.0 || !rand.nextBool()) return;
    
    Bonus bonus = _getPool(drinks) as Bonus;
    if (bonus == null) { bonus = new Bonus(); drinks.add(bonus); }
    bonus.x = p.x + p.size * rand.nextDouble();
    bonus.y = p.y - 40.0 - 200.0 * rand.nextDouble();
    bonus.reset(rand.nextDouble());
    p.bonus = bonus;
    addChild(bonus);
  }
  
  _getPool(List pool) {
    for(DisplayObject section in pool) {
      if (section.parent == null) 
        return section;
    }
    return null;
  }
}

/**
 * Bonus item
 */
class Bonus extends lib.EnergyDring_bmp
{
  double angle = 0.0;
  double yPos;
  
  Bonus() {
    scaleX = scaleY = 0.3;
    rotation = 0.4;
  }
  
  reset(num r) {
    angle = r * math.PI * 2.0;
    yPos = y;
    step(0.0);
  }
  
  step(double elapsedTime) {
    angle += 5.0 * elapsedTime;
    y = yPos + math.cos(angle) * 10.0;
  }
}

/**
 * Platform hitbox 
 */
class Platform extends Shape
{
  //num x;
  //num y;
  double size;
  double right;
  DisplayObject design;
  Bonus bonus;
  
  Platform(num x, num y, this.size) {
    this.x = x;
    this.y = y;
    right = x + size + 50.0;
    if (Level.DEBUG) {
      graphics.rect(0, 0, size, 100);
      graphics.fillColor(0x80ff0000);
    }
  }
}

