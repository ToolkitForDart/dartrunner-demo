library RunnerLib;

/* WARNING: code generated using the Dart Toolkit for Adobe Flash Professional - do not edit */

import 'dart:html' as html;
import 'dart:async';
import 'dart:math';
import 'package:stagexl/stagexl.dart';

/* ASSETS PRELOADING */

ResourceManager resources;

ResourceManager initResources([String basePath = ""]) {
  resources = new ResourceManager()
  ..addTextureAtlas("_atlas_0", "${basePath}images/_atlas_0.json", "json")
  ..addBitmapData("Energybarbg", "${basePath}images/energybar-bg.png")
  ..addBitmapData("Foreground", "${basePath}images/foreground.png")
  ..addBitmapData("Platform1_img1x", "${basePath}images/Platform1_img@1x.png")
  ..addBitmapData("Platform2_img1x", "${basePath}images/Platform2_img@1x.png")
  ..addBitmapData("Platform3_img1x", "${basePath}images/Platform3_img@1x.png")
  ..addBitmapData("Sky", "${basePath}images/sky.jpg");
  return resources;
}

/* STAGE CONTENT */

class Runner extends MovieClip {
	Intro instance;
	Popup instance_1;
	EnergyBar instance_2;
	Player instance_3;
	Platform3 instance_4;
	Platform2 instance_5;
	Platform1 instance_6;

	Runner([String mode, int startPosition, bool loop])
			: super(mode, startPosition, loop, {}) {
		// intro
		instance = new Intro()
		..setTransform(750.1,360,1,1,0,0,0,750.1,360);

		timeline.addTween(_tween(instance).to({"off":true},5).wait(15));

		// popup
		instance_1 = new Popup()
		..setTransform(562.1,362.1,1,1,0,0,0,2,1.4)
		..off = true;

		timeline.addTween(_tween(instance_1).wait(14).to({"off":false},0).wait(6));

		// energy
		instance_2 = new EnergyBar()
		..setTransform(597.2,131.1,1,1,0,0,0,585,122.5)
		..off = true;

		timeline.addTween(_tween(instance_2).wait(9).to({"off":false},0).wait(11));

		// character
		instance_3 = new Player()
		..setTransform(360.2,199.3,0.658,0.658)
		..off = true;

		timeline.addTween(_tween(instance_3).wait(9).to({"off":false},0).wait(11));

		// platforms
		instance_4 = new Platform3()
		..setTransform(2088.9,201.2,1,1,0,0,0,442.4,0);

		instance_5 = new Platform2()
		..setTransform(1177.8,199.2,1,1,0,0,0,495.7,0);

		instance_6 = new Platform1()
		..setTransform(342.6,200.4,1,1,0,0,0,342.4,0);

		timeline.addTween(_tween({}).to({"state":[]}).to({"state":[{"t":instance_6},{"t":instance_5},{"t":instance_4}]},5).wait(15));

	}
}


/* LIBRARY */

class Btplay extends Bitmap {
  static BitmapData bmp;
  Btplay():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getTextureAtlas("_atlas_0").getBitmapData("btplay");
  }
}

class Cloud extends Bitmap {
  static BitmapData bmp;
  Cloud():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getTextureAtlas("_atlas_0").getBitmapData("cloud");
  }
}

class Energybarbg extends Bitmap {
  static BitmapData bmp;
  Energybarbg():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Energybarbg");
  }
}

class EnergyDring_bmp extends Bitmap {
  static BitmapData bmp;
  EnergyDring_bmp():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getTextureAtlas("_atlas_0").getBitmapData("EnergyDring_bmp");
  }
}

class Foreground extends Bitmap {
  static BitmapData bmp;
  Foreground():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Foreground");
  }
}

class Platform1_img1x extends Bitmap {
  static BitmapData bmp;
  Platform1_img1x():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Platform1_img1x");
  }
}

class Platform2_img1x extends Bitmap {
  static BitmapData bmp;
  Platform2_img1x():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Platform2_img1x");
  }
}

class Platform3_img1x extends Bitmap {
  static BitmapData bmp;
  Platform3_img1x():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Platform3_img1x");
  }
}

class Popupbg extends Bitmap {
  static BitmapData bmp;
  Popupbg():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getTextureAtlas("_atlas_0").getBitmapData("popup-bg");
  }
}

class Sky extends Bitmap {
  static BitmapData bmp;
  Sky():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getBitmapData("Sky");
  }
}

class Star extends Bitmap {
  static BitmapData bmp;
  Star():super(bmp) {
    if (bitmapData == null) bitmapData = bmp = resources.getTextureAtlas("_atlas_0").getBitmapData("star");
  }
}

class Popup extends Sprite {
	TextField txtTitle;
	Star instance;
	TextField txtScore;
	Popupbg instance_1;

	Popup() {
		// txtTitle
		txtTitle = new TextField("YOUR SCORE:", 
		  new TextFormat("Arial Black", 31, 0xFFFFFF, bold:true, align:"center", leading:2, leftMargin:2))
		..setTransform(-178.9,-55.1)
		..width = 359
		..height = 48
		..multiline = true
		..wordWrap = true;

		// star
		instance = new Star()
		..setTransform(98.1,-47.2,0.5,0.5);

		// txtScore
		txtScore = new TextField("455m", 
		  new TextFormat("Arial Black", 41, 0x078AC5, bold:true, align:"center", leading:2, leftMargin:2))
		..setTransform(-130.9,0.5)
		..width = 265
		..height = 62
		..multiline = true
		..wordWrap = true;

		// popup-bg.png
		instance_1 = new Popupbg()
		..setTransform(-199.4,-87,0.5,0.5);

		addChild(instance_1);
		addChild(txtScore);
		addChild(instance);
		addChild(txtTitle);
	}
}

class Placeholder extends Sprite {
	Shape shape;

	Placeholder() {
		// Calque 1
		shape = _draw(100,50)
		.f(0x7f0099FF).s().p("AvnHzIAAvmIfOAAIAAPmg").shape;

		addChild(shape);
	}
}

class Intro_score extends Sprite {
	TextField txtLabel;

	Intro_score() {
		// txtLabel
		txtLabel = new TextField("[0000m]", 
		  new TextFormat("Arial Black", 47, 0x1285CD, bold:true, align:"center", leftMargin:2))
		..setTransform(-139.9,-35.1)
		..width = 280
		..height = 70
		..multiline = true
		..wordWrap = true;

		addChild(txtLabel);
	}
}

class Intro_legal extends Sprite {
	TextField text;

	Intro_legal() {
		// Calque 1
		text = new TextField("The name and logo design for Ultimate Trail \nreferred to in the sample artwork are fictional and are used for demonstration purposes only.", 
		  new TextFormat("Verdana", 18, 0xFFFFFF, bold:true, align:"center", leading:-7, leftMargin:2))
		..setTransform(-561,-55.6)
		..width = 1122
		..height = 56
		..multiline = true
		..wordWrap = true;

		addChild(text);
	}
}

class Fade extends Sprite {
	Shape shape;

	Fade() {
		// Calque 1
		shape = _draw(574.5,360)
		.f(0xFFFFFFFF).s().p("EhZwA4QMAAAhwfMCzhAAAMAAABwfg").shape;

		addChild(shape);
	}
}

class Cloud_1 extends Sprite {
	Cloud instance;

	Cloud_1() {
		// Calque 1
		instance = new Cloud()
		..setTransform(-277.9,-62,1.241,1.241);

		addChild(instance);
	}
}

class BtnPlay extends MovieClip {
	TextField text;
	Btplay instance;

	BtnPlay([String mode, int startPosition, bool loop])
			: super(mode, startPosition, loop, {}) {
		// label
		text = new TextField("PLAY", 
		  new TextFormat("Arial Black", 47, 0xFFFFFF, bold:true, align:"center", leftMargin:2))
		..setTransform(-80.1,-32.1)
		..width = 163
		..height = 70
		..autoSize = 'left';

		timeline.addTween(_tween({}).to({"state":[{"t":text,"p":{"textColor":"0xFFFFFF"}}]}).to({"state":[{"t":text,"p":{"textColor":"0xAAFF98"}}]},1).to({"state":[]},2).wait(1));

		// bg
		instance = new Btplay()
		..setTransform(-121.9,-43,0.862,0.862);

		timeline.addTween(_tween({}).to({"state":[{"t":instance}]}).wait(4));

	}
}

class BarBg extends Sprite {
	Shape shape;

	BarBg() {
		// Calque 1
		shape = _draw(131.5,5.1)
		.lf([0xFF0B3F55,0xFF147BA7],[0,1],0,-32,0,47.1).s().dr(-584.15,-22.5,1168.3,45).shape
		..setTransform(131.5,5.1,0.225,0.225);

		addChild(shape);
	}
}

class Bar extends Sprite {
	Shape shape;

	Bar() {
		// Calque 1
		shape = _draw(131.5,5.1)
		.lf([0xFFFFE93F,0xFFFFA62A],[0,1],0,-20.3,0,20.4).s().dr(-584.15,-22.5,1168.3,45).shape
		..setTransform(131.5,5.1,0.225,0.225);

		addChild(shape);
	}
}

class EnergyDrink_img extends Sprite {
	EnergyDring_bmp instance;
	Shape shape;

	EnergyDrink_img() {
		// Calque 1
		instance = new EnergyDring_bmp()
		..setTransform(-17.4,-98.8,1,1,0.26);

		shape = _draw(13.2,-71.6)
		.f(0x33FFFFFF).s().p("AhAAoIgCgKQgFgYgRgkIgKgUIDDAAIACALIidBag").shape;

		addChild(shape);
		addChild(instance);
	}
}

class _TC_PlayBtn_BG_draw_hole extends Sprite {
	Shape shape;

	_TC_PlayBtn_BG_draw_hole() {
		// Calque 1
		shape = _draw(0,0)
		.lf([0xFFFFFFFF,0xFF199ED9],[0,1],4.2,15.5,-4.1,-15.4).ls([0xFF0F5471,0x0FFFFFF],[0,1],-4.7,-17.8,4.8,17.9).ss(1,2,0,3,true).de(-15.9,-15.9,32,32).shape
		..setTransform(0,0,0.5,0.5);

		addChild(shape);
	}
}

class _Player_Thigh_Right extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;

	_Player_Thigh_Right() {
		// Calque 1
		shape = _draw(20.7,4.4)
		.lf([0xFF030118,0xFF0D023E],[0,1],0,16.1,5.9,3).s().p("ADLCXIgfgXIBSgKIhTgLIgbAFQgaAGgagBQhcAAhQgcQhQgdgsAAQhVAAAAgJQAAgGgJgDIgYgJQgKgFgGgHQgHgUgFgaQgDgUAEgMIARgmQANgeApgMIAygQQgIAjAAASQAAA/AqAVQAZAMBbAFQBmAIBEAUQBwAiBkBNQgrAWgkAAQgHAAgPgLgAEyBkQgBgGgJgWQAOABAKgJQAJgKAAgMQANABACAEIABAGIgBABIgPgMQAGAFAJASQAJAUAAAHQgCAZgRAJIgcgagAjXiZIBggHIgOAGIgDAAIAFAAIgBACIgBABQgTgBgOAUQgNATAAAbQgIgJgcg6g").shape;

		shape_1 = _draw(25.6,3.7)
		.f(0xFF1291C7).s().p("AAsAlQhDgUhogJQhagHgZgKQgrgVAAg/QAAgSAJgjIAMAAQAdA6AHAJIAFAIQAlAPAiAKQBAAVBqALQArAEBVAsQBSAtAUABQAIAVABAGIAdAaIgeAOQhkhNhwghg").shape;

		shape_2 = _draw(22.3,4.7)
		.f(0xFF0B0233).s().p("ACkCfQgMgWgdgCQguAGgqAAQhNABg1gfQg+gkhEgGQhEgHgSgKQgRgJgLgJQgMgIgCgIQAGAHAJAFIAYAJQAJADAAAGQAAAJBVAAQAtAABPAdQBQAcBdAAQAZABAbgGIAagFIBTALIhSAKIAgAXQAPALAHAAQAkAAArgWIAegOQARgJABgZQAAgHgJgUQgJgSgFgFIAPAMIAAgBIAAgGQgCgEgNgBQgRgPhEgkQhBglgIgKQgagfg5giQhJgqhAAAQhBAAgTALIACgCIgGAAIADAAIAOgGQARgGA6gJQAjAAAZAHQAeAJA2AbQAcAOA3AzQAyAvAfALQA7ARAZAcQAWAZAAAlQAAAcglAZQgtAfhNAAQgTAAgMgUg").shape;

		shape_3 = _draw(28.2,-0.1)
		.f(0xFF180479).s().p("AB4BJQhVgugpgFQhsgKhAgTQgigLglgPIgFgHQAAgbAOgTQANgUAUAAIAAAAQATgLBBAAQBBAABIAqQA5AhAaAgQAIAKBBAiQBEAnARAPQAAAMgKAJQgKAJgNAAQgUAAhSgtg").shape;

		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Thigh_Left extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;

	_Player_Thigh_Left() {
		// Calque 1
		shape = _draw(21.1,11.7)
		.f(0xFF0D023E).s().p("ACICCIA7AQIgEgDQgXgSgRgGQgHgCgYgDQhfgNh7g+QiThFg0hJIACgBIgDgBIgEgNQAFgXAkgSQAkgTBLgQIgZAjQAEACBAAEQgQAEgSANQgPAMAAAFQAAA9BuAsQAfANBaAWQAUAFCYBDQAMAHANALIAIAOQAKAPANAGQgNAQgHAUQgEANgGAAQg3AAhShBg").shape;

		shape_1 = _draw(29.3,11.3)
		.f(0xFF180479).s().p("ADFCBIgHgOQgNgKgNgIQiYhDgSgFQhcgXgfgLQhtgtAAg9QAAgFAPgLQARgOAQgDQBSgHB6BZQAmAbBWBLQAXAUAyAeQAcARAAASIgFAKQgGAKgIAJQgNgGgKgPg").shape;

		shape_2 = _draw(23,12.2)
		.f(0xFF0B0233).s().p("ADMDAQgJgDgbgRQhEgqh6gkQh4gkhrhbQhJhBAGgKQAzBJCTBFQB8A+BfAOQAXACAHACQARAGAXATIAEACIg6gPQBRBAA3AAQAHAAAEgNQAGgUANgQQAIgJAGgKIAFgKQAAgSgcgRQgygegXgUQhWhLgmgbQh6hahSAIQg/gEgFgDIAagjQB3AaBSAyQBUAxAjAkQAjAlAFABQAjAXA2AiQAmAbAAAWQAAAHgeArQgdAsgFAAQgfAAgTgIg").shape;

		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Shoulder_Right extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;
	Shape shape_8;
	Shape shape_9;
	Shape shape_10;
	Shape shape_11;
	Shape shape_12;

	_Player_Shoulder_Right() {
		// Calque 1
		shape = _draw(-18.9,25.1)
		.f(0xFFCF764B).s().p("AgSAqQALgVAJggQALgfACgPIAAgDQAEAGAAAIQgBAJgNAmQgHAZgEAYIgCgDIgCgDQgEgDAAAHIABACIgCAEIAAAFIAAACg").shape;

		shape_1 = _draw(-20.3,30.9)
		.f(0xFFCF774C).s().p("AAGAPIgDgCIAAAAIgBgBQgCgBgBgFQgDgGgBgJIABgFIADARIAAgCIAAgDIABgEIAAgCQAAgHACADIACADIACADIAAACIAAATg").shape;

		shape_2 = _draw(-19.6,32.4)
		.f(0xFFBA643E).s().p("AAAAAIAAAAIAAAAIAAAAg").shape;

		shape_3 = _draw(-34.4,34.3)
		.f(0xFF333333).s().p("AAAAAIAAAAIAAAAIAAAAIAAAAg").shape;

		shape_4 = _draw(-18.2,20.6)
		.f(0xFF552D17).s().p("AAICBQAHAAAJgCQAygMASgTQASgTApg+QAHAIAHAKQg1BAgVAKIhAAfIgTgJgAigCIIgCAAQgBgIAAgKQgBgMAVgcQAWggAGgYQAMg2AJgZQAUg6AcgXQARAEAIAFQgZAUgwBnIhACJIgCAFg").shape;

		shape_5 = _draw(-27.1,22.5)
		.f(0xFFBA643F).s().p("AhHCLQgEgKAEgMIAAABIAAgBIACgFIBAiJQAuhnAZgUIAIAEQg/BFgBASQAAATACAQQABARgPAoQgRArgiBHIgCAAQgLAAgFgKg").shape;

		shape_6 = _draw(-13.3,27.4)
		.f(0xFFEA9B71).s().p("AhVAzQgTgLACgLQADgLAXgpQAXgrAOgOQgCAPgLAfQgLAigLATIgBAFQABALADAGQACAFADABIABABIAAABIAAgBIADACIAAAAIAAAAIAAAAIAUAHQAtgKAqgmQAqglABgrIAPAUQgqA8gSATQgSATgwAMQgIACgHAAIASAJIgMALIg1gegAg+AwIABgBIgBABIAAAAg").shape;

		shape_7 = _draw(-18.5,23.4)
		.lf([0xFFF19761,0xFFB9623E],[0,1],3.4,-6.9,3.4,18.5).s().p("AhKCbQgWgCgrgNQAihIARgqQARgpgBgQQgCgRABgSQAAgTA/hFQAoAXBuBkQgBApgqAnQgqAmgvAKIgSgHIAAgBIAAAAIAAgUIAAgCQAEgYAHgZQANgmABgJQAAgIgEgGIAAADQgMAOgYApQgXArgCALQgCALATALIAzAeQgOASgbAJQgYAHgUAAIgHAAgAgKBXIAAABIAAABIABABIgBgCIABgBIgBAAgAgNBYIAAAAIAAABg").shape;

		shape_8 = _draw(-8.2,5.7)
		.f(0xFF1291C7).s().p("AgOATQgCgDgMgIQAPgJACgEQACgDAHgXIABgCIAOAVIAQAMIgBACQgKAMgXAUIgJgPg").shape;

		shape_9 = _draw(-5.1,5.3)
		.f(0xFF0D023E).s().p("AAZBjQgigdgNgIIADADQgPgIgRgFIAPgOQAYgUAKgMQAfAYBRARQASAAASgDQgKAdgdAXQgbAWgTAAQgNAAgXgTgAiRAOQANgKAVgzQAUgwAqgWQgKAmAaA0QgIAXgBADQgDACgPALIgSAHQgMAFgOALQgZgOgQgHg").shape;

		shape_10 = _draw(-5.2,1.9)
		.f(0xFF15ABEA).s().p("AhnBFQAOgLAMgFIASgHQAMAIADADIAJAPIgPAOIgLAMQgSgOgYgPgAgPAYIgRgVQAvhXAYgNIAgAKIAgAMQgQALgoAsQgkAmgLAUIgPgOg").shape;

		shape_11 = _draw(-5.3,6.7)
		.f(0xFF0B0233).s().p("AAXCaIgOgUQhshkgqgWIgJgEQgHgFgSgDQAhgQANgSQAIgMAOgnQAPgsAdgUQAggVA2gBQA6AAAsAlQAzAqAABFQAAA9gjAsQgmAsg6gCIgCAPQgCATgFAOQgGgKgHgIgAAAiTQgeADgQANQgqAWgUAwQgVA1gNAIQAQAHAZAOQAXAPATANQA4AuAdA0QADgKAAgKQAAgMgKgUQgNgZgWgUIgDgCQANAHAiAeQAWATAOAAQATAAAbgWQAdgYAKgcQAIgxgHghQgIgqglgdIghgMIgfgKQgMgDgOAAIgPABg").shape;

		shape_12 = _draw(-0.7,6.6)
		.f(0xFF180479).s().p("AhqAyIALgMQARAGAPAHQAZAUANAZQAJATAAAMQAAAKgDALQgfg0g4gugAgugFIACgDQAMgTAjgpQAngsARgKQAkAdAJAqQAHAggJAyQgRACgTAAQhPgQghgWgAhdiCQARgNAfgDQAYgCASAEQgZANgwBYIgBACQgZg0AJglg").shape;

		addChild(shape_12);
		addChild(shape_11);
		addChild(shape_10);
		addChild(shape_9);
		addChild(shape_8);
		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Shoulder_Left extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;

	_Player_Shoulder_Left() {
		// Calque 1
		shape = _draw(0,29.1)
		.lf([0xFFF19761,0xFFB9623E],[0,1],-69.4,56.4,-82.9,65).s().p("Ag0B3QgTgNAAgSQABgCAGgeQACAMAGAJQAGAIAEAAQAPAAANgoQALgjAAgaIgGg7QgDgYAPgdQAcgFANACQAHAAAQAHQAEAJACAOQADANAAAIQAAASgjBXQgaBAgSArQgaAAgTgNg").shape;

		shape_1 = _draw(4.4,29.5)
		.f(0xFFBA643F).s().p("AgGAWQAhhXAAgTQAAgHgDgOQgCgOgEgIQAPgBAKASQAKASAAAaIgdBBQgVAvgBAGIgSAqQgTAfgRAEQAUgsAag/g").shape;

		shape_2 = _draw(0.4,29.6)
		.f(0xFF552D17).s().p("AhXAIIgJhBQADgMADgDIAHgJIAPB8IAAAIQgGAegCABQgEgUgHg2gABBgCIAchCIAEAcQgIASgVAiQgUAggFAHQABgGAVgvg").shape;

		shape_3 = _draw(-4.1,26.9)
		.f(0xFFEA9B71).s().p("AgOBjQgHgJgBgMIAAgIIgPh8QALgSAKgJQAWgVAggEQgOAdACAYIAHA5QAAAcgMAkQgNAngNAAQgDAAgGgIg").shape;

		shape_4 = _draw(3,5.7)
		.f(0xFF0D023E).s().p("ABHCMQgLgZgagOQgUgLgOAAQgKAAgRADIAGgKQADgFAAgGQAAgIgGgHQgHgIgMAAQgUAAgEADQgDACgLALQADgGgLAIIgNALIgFgQQAIhRBBgxIAoggQATgQAAgRIgZgMIAWgCIgQgCQAugBASALQAmAZAABUQAAAKgJAdQgJAhgJAQQgHgKgJgIIAAACIAIASQAIAWAAAfQAAAOgIAXg").shape;

		shape_5 = _draw(-1,5)
		.f(0xFF180479).s().p("Ag+B+IALgbIALgbQALgLAEgBQADgEAUAAQAKAAAIAJQAFAGAAAJQAAAGgDAFIgGAJQgdAHgTAKQgPAHgOAOgAgihMQAgg9AqAAIAaAMQABARgUAQIgqAfQg+AygJBRQAAhUAgg+g").shape;

		shape_6 = _draw(0.9,8.1)
		.f(0xFF0B0233).s().p("ABYCRQAAgZgKgSQgKgSgOAAQgQgHgHAAQgNgCgdAFQggAEgXAVQgLAJgLASIgGAJQgDAEgEALQgCgNAAgKQAAgJAIgcIAIgcIgOgeQgMgdAAgfQAAg7AdgnQAlgyBLgCIAQABIgXADQgqAAggA9QggA9AABVIAEAQIAOgLQALgIgDAFIgMAbIgLAbIgCAMQANgOAPgHQATgKAggHQAOgCALAAQAPAAAVAKQAaAPALAYIACALQAHgYABgNQAAgggJgWIgIgSIABgCQAJAJAHAKQADAGAEASQAFAUgBAMQABAkgXAug").shape;

		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Shin_Right extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;

	_Player_Shin_Right() {
		// Calque 1
		shape = _draw(-5.8,26.3)
		.lf([0xFFF19761,0xFFB9623E],[0,1],8,-11.2,-15.1,-14.9).s().p("AgqDyIgCgLIADgPIAJhkQAJhrgahFQgIgSgMgbQgKgWAAgRQAAgLAIgMQASgaAXgyIAPAIIgCAAQgXAUgLAaQgIASAAALQAAAtARAcQAPAcAAAJQAOgMAOglQAVgxAAg2IgEgJQgEgJgFgGQAKAFAWAEQAWAEARABIgnAAIgCgBIgCA4QAICjAEAvIAKgFIgIAqIgLAqQghA1gDAqQgBAMgDACQgCADgTAAQgKAAgLgCg").shape;

		shape_1 = _draw(0.1,62.4)
		.f(0xFF112635).s().p("AgEAiQghgIgLgHQAFgKAagMQAcgPAZAAQAFAAATAFQATAEAFAAQAlAAASgRIARgRQAOAAASALQASAKAAAJQAAASgjASQgqAVhEAAQgeAAgjgKgAjMgBQADgLALgKQAKgKAHAAQASAAAkAVQAXALAVAOIACACQgIADggAEQgfAEgKAAQg7AAAJgcg").shape;

		shape_2 = _draw(5.6,49.8)
		.f(0xFF840084).s().p("AgJA7Qg0gkAAgQQAAgCAFgDIALgFQATACAQAEQAYAhAgAWQAZAQAQADIABACIgQAKIgPAKQgTgGgvgigAhLghIgMgTIAbgtIARAoQAEAMAPAdIgBABQgeABgLADQgBgHgIgPg").shape;

		shape_3 = _draw(-3.5,53.9)
		.f(0xFF660066).s().p("Ag7BCQgtgcgsADIATgtQAWgtAfgQQgCAXAAAKQAAAOAoAAQAUAAAGgOQAFgLAKgzIAMAUQAIAPABAGQgLAIgJAPQgEALAAAEQAAANAPAUQATAYAeATQgegJgeAVQgWAWgDAAQgPgPgXgOgAAoAdQgWgVgKgXQAAgHAKgLQAMgOARAAQAIAAAJAEIAQAHQgQgHgTgCIgLAIQgEACAAACQAAAQA0AjQAwAiATAFQgQADgOAAQgtAAgigfg").shape;

		shape_4 = _draw(0.3,53.5)
		.f(0xFF2B002B).s().p("AgnCBIgfgRIgcAIQgdAIgcAAQggAAgOgGQgQgGAAgQQAOgoAUgoQAnhQAdgLQAFAAADAFQAEAFAAAIIgCAPIABALQALACAKAAQATAAAEgDQADgCABgMQADgqAig1QAHgFAKgDQAOAKAUAwQAVAzAiAcQAVAQBAAQQAuALAAAfQAAAmguAWQgqAUhBAAQhHAAghgRgAgTBUQgaAOgFAKQALAHAhAIQAjAKAeAAQBEAAAqgVQAjgSAAgUQAAgJgSgKQgSgLgOAAIgRARQgSARglAAQgFAAgTgEQgTgFgFAAQgZAAgcAPgAjABBQgLAKgDALQgJAeA7AAQAKAAAfgEQAggEAIgDIgCgCQgVgPgXgMQgkgVgSAAQgHAAgKAKgAhiBHQAXAOAPAPQADAAAYgXQAegUAcAIQgcgSgTgZQgRgVAAgLQAAgFAGgLQAJgPALgHQALgDAdgCIABAAQgPgegFgLIgOgpIgcAtQgMAzgFALQgGAOgUAAQgoAAAAgOQAAgKACgXQgfAQgWAtIgTAtIAJAAQAnAAApAagAgTgcQgKALAAAHQAKAXAUAVQAtAoBAgNIAQgJIAPgKIgBgCQgPgDgZgQQghgVgaggIgQgHQgJgDgIAAQgPAAgMAOg").shape;

		shape_5 = _draw(-3.6,17.2)
		.f(0xFFEA9B71).s().p("AAOhBIADg4IACAAIAnABIAYAAQgJBDgKA2IgaCLIgKAFQgEgwgJiigAhBADQgQgaAAgtQAAgMAHgRQAMgaAXgVIANAFIAPAFQAFAGAEAJIACAJQAAA2gTAxQgQAjgOALQAAgJgQgbg").shape;

		shape_6 = _draw(-4.5,21.2)
		.f(0xFF552D17).s().p("Ag6D/QgDgFgFAAQAIhZAAgWQAAhTghg4IgXgkQgLgRAAgOQAAgkAagxQAYguAjgiIARgNQgtBHgSAlQgUAnAAAXQAAALAfA/QAfA9AAA/IgBAsIgJBlQAAgIgEgFgAAmCOIBWmLIgCAGQABgEABgQQADAFgCAXQAEgHgnDDQglCxgMAyIAEAAQgKADgHAFg").shape;

		shape_7 = _draw(-3.7,14.6)
		.f(0xFFBF6842).s().p("Ag1C9QAAg/geg/Qgfg/gBgJQABgXATgnQASglAuhHIgRANIABgBQASgcAhgTQAdgQAUgCQAUgBAUAKQAVAKABAMQgBAQgBAEIACgGIhVGLIAIgqIAZiLQAKg2AKhDIgYAAQgRgBgWgEQgVgFgKgEIgOgFIgNgFIABAAIgOgIQgXAzgSAaQgIAMgBAKQAAARAKAVQANAbAHASQAaBGgJBrg").shape;

		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Shin_Left extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;

	_Player_Shin_Left() {
		// Calque 1
		shape = _draw(-30.6,-42.7)
		.f(0xFF840084).s().p("ABDAnQgbgagHgFIABgBIgCgBQASgBAZgHIAUAPIAUASQgFAggFAMQgKgLgcgZgAAWgEIgKgDQgHgFgtgRQgwgQgJgBIgPADIgCAAIAKgPIALgPQAegGA5AWQA2AVAOAWQgOALgPAAIgLgBg").shape;

		shape_1 = _draw(-23.6,-48.4)
		.f(0xFF660066).s().p("AAaBFIgVgRIANgNIAEgGQAAgUgRgNQgVgShDgZQAtgMAUgSQAQgNACAAQAhAPAkAOQBLAcAUgDIgBABQgBANgKAdQgOAngMAIIgNgfQgBgEgDAAQgFABgTgEQgRgEgFAAQgKAAgHAEQgJAFAAAIQAAAGAEAXIAFAZIgUgSgAgiAzQAPABAOgMQgPgWg4gTQg5gWgeAHQAMgHAlgKQAhAAAuAVQArASAAAOQAAAKgIAKQgJAMgSAAIgHgBg").shape;

		shape_2 = _draw(-27.8,-47.5)
		.f(0xFF2B002B).s().p("AA4BwIgtgnQhGg6hJAAIgdAIQgcAJgEAAQgbAAAAgiQAAgyAugkQAygnBXAAQAZAAAZAKQAbAKADAAIBCgNQA9AAAZAPQAZANAAAhQAAAFgEAEQgFAEAAAFQAKAnAAAPQAAAegwAQQgLgGgJgNIgOgUIgWgBQgPABgMAGQAAAQAFAWQAGAWAAAEQgBATgEAIQgFAJgDACIgBAAQgLAAgUgQgAAWhRQgUARgrAMQBAAaAYATQARAMAAATIgFAHIgMAMQgYAKgSAAIACACIgBABQAGAEAcAaQAcAaAKALQAEgNAFggIgEgZQgEgXAAgFQAAgJAJgFQAHgEAJAAQAFAAASAEQASAEAFAAQAEAAABADIAMAgQANgJANgnQALgdABgMIAAgCQgTADhLgcQglgOgigPQgCAAgQAOgAhEARQAwARAGAFIALACIAIACIAIAAQASAAAKgMQAJgKAAgKQAAgLgtgVQgtgVghAAQgkAKgMAHIgLAPIgKAMIACABIAPgDQAJAAAwARgAiWhXQg8AdAAA2QAAAQAUAAQAZAAAYggQAXgiAsAAQAvAAAVgOIAbgeQgGgEgRgEQgUgFgJAAQhGAAgxAYgAAzhkIAKAFIBXAhQAiAMAKAAQAEAAAEgEQAEgGAAgLQAAgZgXgGQgOgDgbAAQgiAAg3AFg").shape;

		shape_3 = _draw(-28.1,-52.5)
		.f(0xFF112635).s().p("AjOAsQgBg0A8gdQAxgYBGAAQAJAAATAFQASAEAGAEIgbAeQgVAOgvAAQgsAAgXAgQgYAigZAAQgTAAAAgSgACXgMIhXghIgJgEQBigLAfAJQAYAFAAAZQgBAMgEAFQgDAEgFAAQgKAAgigMg").shape;

		shape_4 = _draw(-6.2,-18.2)
		.f(0xFFBF6842).s().p("AgqBGIhMj0QAEgIABgTQAQAnAUBLIAjB9QApCUAmAAQAJAAAegKQAfgLAMgIQgXAthIAAQgZAAgpiEg").shape;

		shape_5 = _draw(0,-20.2)
		.f(0xFFEA9B71).s().p("AgWAkQgshCgEg4IAEgTQBeBDAKALQAgAiABBJIgCAVIAAADQgBACgGAAQgnAAgthGg").shape;

		shape_6 = _draw(-4.7,-21.1)
		.f(0xFF552D17).s().p("Ag9CDQgKgjgXhVQgXhSgXg/QACgCAFgJIBMD0QApCEAZgBQBIAAAXgsQAJgOAOhLQAAhCgRgeQgLgTgigYQgsgfgXgdQgugzgphZIANAUQAKAOAKAFQAUA4AkAkQAOANAyAhQAnAZAQAbQAXAkgBBEQAAA2gNAgQgdBBhQAAQgwAAgghvg").shape;

		shape_7 = _draw(-5.4,-22.6)
		.lf([0xFFF19761,0xFFB9623E],[0,1],-4.3,7.7,17.5,-0.7).s().p("AgyBSIgjh+QgUhLgQgmQAAgEgGgWQgFgWAAgQQAMgGAPgBIAWABQAqBYAsA0QAZAcAsAfQAiAZALASQAQAfAABCQgNBLgJAOQgMAIgfAKQgeAKgJAAQgmAAgpiTgAgQg+QAEA4AqBCQAuBGAoAAQAGAAAAgCIABgDIABgVQAAhJgggiQgKgLhehDg").shape;

		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Head_2 extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;
	Shape shape_8;
	Shape shape_9;
	Shape shape_10;
	Shape shape_11;
	Shape shape_12;
	Shape shape_13;
	Shape shape_14;
	Shape shape_15;
	Shape shape_16;
	Shape shape_17;
	Shape shape_18;

	_Player_Head_2() {
		// Calque 3
		shape = _draw(-16.9,-2.4)
		.f(0xFF3C003C).s().p("AhBBWIgngmQgNgNgEgNQgCgNAAggQAAgvATgrQALgWASgeIgSBZQAAAnALAOQANAJAIAHQAFgTAhguQAfguANgIQgOAdgSA4QgSAzAAAIQAAANAGALQAIANAOAAQACAAAegkIBehuQgoA5hNDBIgDAHQgjgugjgig").shape;

		shape_1 = _draw(-4.4,-8.2)
		.f(0xFF2B002B).s().p("AjeCHQgtg1AAgxQAAiXBrhIQBQg1B2AAQA1AABGAcQA/AYAsAhIgLACIgWAEIgdAFIgZAFQgFAAgeAJIgUAHIgmAWIgLAIIgHAGIgOAMQgYAcgIAMQgOAUgYAsIgHAMIgIAQIgMAVIgFAMIgaA5QgEALgDAbQgGAegcAgIhthtgAhjjLQg4AagtBFQgRAegLAXQgUAqAAAuQAAAiADAMQAEANANAOIAnAmQAiAiAmAuIADgIQBMjDAmg3QAcgpBagwQBdgxAmAKQhwhChbAAQhcAAg1AZg").shape;

		shape_2 = _draw(-2.9,-14)
		.lf([0xFF3C003C,0xFF970198],[0,1],-33.1,12.6,1.2,-21.7).s().p("AiiCeQgHgLAAgNQAAgIATg1QATg4APgbQgOAIghAsQghAugFATQgHgHgOgJQgKgOAAgnIARhXQAthFA3gbQA2gZBcAAQBbAABvBDQgmgLhdAyQhZAwgaAnIhdBwQgfAkgEAAQgOAAgHgNg").shape;

		shape_3 = _draw(22.4,-13.9)
		.f(0xFFFFDF62).s().p("AAZgKQgfgbg8gnIgCgBQAMABAdAGIAxAdQAUAMAYAUIAYAWIABAAQASAmAAAxQgZhAg7gugAgyAJQgugugjgbIAwAIQA2AHAdAxQAIAoAEA3QgGgZg4g9gAA6gnIhag4IAVgEQA3AqAgAaQAKAGAuALIgEAAQgZAAgtgZg").shape;

		shape_4 = _draw(-0.1,-0.2)
		.f(0xFFCCCCCC).s().p("AAAAAIAAAAIAAAAg").shape;

		shape_5 = _draw(-1.5,-3.3)
		.f(0xFF53D5FF).s().p("AAAAAIAAAAIAAAAg").shape;

		shape_6 = _draw(8.9,15.3)
		.f(0xFFFFFFFF).s().p("AgiABQgNgUgFgCIABAAQAJAHAdAHQAiAIAggBQgCAGgFAEIgGAFIgBABQgLAGgPAAQgdAAgSgVg").shape;

		shape_7 = _draw(7.8,13.2)
		.f(0xFF070609).s().p("AgmAPIgSgfQAUAPAkAEIAxAGQAZADAGAJQgJACgNAJQAFgFABgGQgfACgigLQgdgHgKgFIAAAAQAFAAANAWQASAWAcAAQAPAAALgHIACgBIgDADQgSANgIAAQgkAAgZglgAhPgyIABgBIAAABIgBAAg").shape;

		shape_8 = _draw(15.3,9.9)
		.f(0xFFF4AD82).s().p("AhgBcIgNgMIgBgCIgBgHQAAgGABAAQABABAAAAQABAAAAAAQAAAAAAAAQABAAAAgBIAeAQQAEADABAKIgHABQgHAAgKgDgAgBhSIAQgLIACgBQAEADAtAVQApASAFAJIgUACQg1AAgogpg").shape;

		shape_9 = _draw(12.2,-0.5)
		.f(0xFF0098CA).s().p("AhBAmIgVgHIA2gxQAWAAANAKQAPAJAAAPQgdAQgLAFQgKAEgMAAQgHAAgOgDgABaATQgIgBgNgGIgNgHQAJgHAigHIANAWQgHAGgLAAIgEAAgAB5gMIAEACQAAABAAAAQABAAAAABQAAAAAAABQAAAAAAABIgGAKgAh2ghQAGgHAJAAQAGAAAFACIAIAEIgmAlQgHgYALgMg").shape;

		shape_10 = _draw(11.9,-2.8)
		.f(0xFF33CCFF).s().p("AAGANQgNgKgVAAQACgBADgFQAEgHAFAAQAeAAAXAJQAMACAGAEQAKAAAcgFIAIAMQgiAHgJAJIgEgEIgDABIggAOQABgPgQgLgAh3AaQgKgPgEgOIABgBQABgQAJgKQAHgIAJAAIARAEIAXAHIgOAQIgIgEQgGgCgGAAQgIAAgGAHQgLAKAGAagACBALIgEgCIAAgNIAKgBQAAAGgFAOQAAgBAAAAQAAgBAAAAQgBgBAAAAQAAAAAAgBg").shape;

		shape_11 = _draw(11.7,-2.2)
		.f(0xFF006F93).s().p("AhyAlQgfgeAAgkQAAgSAHgJQAHgKARAAQAkAABKAYQAhALAeAMIAcgBIAGAIQgYADhBgWQhDgYgyAAQgKAAgGACQgEATAAAHQAAAKACAHIAAABQAEAOAKAPIAAAAQALAQAZAMIAWAHQAOADAHAAQALAAAKgEQAMgFAcgQIAggOIgEAIIgSALQgIAFgdAMQgfAMgGAAQgrAAgegegABgAkQANABAJgHIAEAJIgDADgAB9AVIAHgMQAFgMAAgIQAAgCgEgCIgGgBIgBgLQANAFADADQAEACAAAGQAAAdgXAUg").shape;

		shape_12 = _draw(11.8,-2.6)
		.f(0xFFAEEBFF).s().p("Ah2AYIAAAAIAngmIAOgPIgYgHIgQgEQgJAAgIAIQgIAJgCARIgBAAQgBgHAAgKQAAgHADgUQAHgBAKAAQAyAABDAYQBBAVAYgCIAEAGQgcAEgKAAQgGgCgMgEQgXgIgeAAQgGAAgEAGQgDAGgBAAIg3A0QgZgMgLgQgAB9gNIAHACQADABAAADIgKAAg").shape;

		shape_13 = _draw(8,5.3)
		.f(0xFFF19761).s().p("AgqDOQg3gNgZghQgcgrgSg0QgQgtAAgXQAAgFANgmQAOAPAEATQAEAOgEAPIACABQALgNAIgSQAHgUAAgRQgHgqgHgQQAagtAOgUQAIgMAYgcQAaACApAIIAEACQghAKgOAIQgIAEgMALIABgBIAEgCIgIAIIgCACIAGABQBSgaAPACQAeAQAeAhQAUAXAJAQIgcABQgegMgkgLQhHgYglAAQgQAAgIAKQgGAJAAASQAAAmAeAeQAfAeArAAQAEAAAfgMQAfgMAIgFQAxAuBBgJQABAKgKAOQgaASgmAFQghAEgSgHQAEANAWARQAVAPAKAAIgfBWQgTAmgmAAQglAAgigIgAgeCUQAOAKAVAAQANAAAHgDQAGgDAHgJQgJADgXgDQgVgCgIgDQAQAFAHgDQAAgKgFgDIgdgQQAAAAgBABQAAAAAAAAQAAAAgBAAQAAgBgBAAQgBAAAAAGIABAHIgJgKQAAAWAQAMgAgoBfQAZAkAkAAQAIAAASgNIADgDIAGgEQANgJAJgCQgGgIgZgEIgxgGQgkgGgUgPIASAigAhRAbIABABIAAgCg").shape;

		shape_14 = _draw(5.9,7.2)
		.f(0xFF552D17).s().p("AguDTIAHgKQg6gQgthDQgjg1gEgmIgBAEIgVBIIgCAIIgQgKIAEgLQAcghAGgeQADgbAEgJQACAWANAmQAWA9AmAdQAZAhA3ANQAgAIAnAAQAmAAATgmIAfhWIAKgYQgYAAgMgDIgJgDIgJgHQARAGAPgBQALAAAVgHQAZgLANgPQAKgNgBgJQgFgJgpgSQgsgVgEgEIgCACIAEgIIADgBIAEAEIAMAHQAOAGAIAAIAWAHQAVAHANAKQAMAIAAAHQAAASgeAZQgkAegNArQgWBLgMAPQgVAbg9ABQgvgBgLAHgAgWjLQAOgHAhgKIAeAQQgQgEgKABQgdAAgQAFIgVAMIgEACIgBABQAMgLAIgFg").shape;

		shape_15 = _draw(5.4,5.5)
		.f(0xFFCD784B).s().p("AjICAIACgIIAVhIIABgDQAEAlAjA1QAtBDA6ARIgHAKgAicBEQgNgmgCgYIAag2IAAAAQgNAmAAAFQAAAXAQAtQASA0AcArQgmgdgWg9gAgECSQgQgMAAgWIAJAKIABACIALAMQAIADAXACQAXADAJgDQgHAJgGADQgHADgNAAQgXAAgMgKgABwBJQgWgRgEgNQASAHAhgEQAmgFAagSQgNAPgZALQgVAIgLAAQgPAAgRgGIAJAHIAJAEQAMADAYAAIgKAXQgKAAgVgPgAgqijIACgCIAIgIIAVgLQAOgGAfAAQAKAAAQADIABABQgPgChSAaIgGgBgAgpjXIAOgNIA0AYQgogJgagCg").shape;

		shape_16 = _draw(13.4,-8.9)
		.f(0xFFDDB000).s().p("AjICLQACgNgGgQQgGgSgKgJIALgVQAAADAIAaQAHAWgEAbgACmAhIgIgEIgdgLIgHgGQgZgVAAggIAqAiQAkAaAIAPIgRgBgAABglQg0gngygMIAMgJQA/AaAcAYQAWASAlArQgWgYgmgbgAC0giIgYgYIAhAMQARgCAPgIQgGAGgNAHQgPAIgGABgAgphyIgKgEIATgHIAlAUgAAUh+IACABIgVgJIAagFIAiAUQgdgGgMgBg").shape;

		shape_17 = _draw(14.1,-9.2)
		.f(0xFFFFCC00).s().p("AjNCPQAFgbgHgXQgIgZAAgEIAJgQIAHAaIAFAUQAAAIgEAQQgCARgEAIgABPA1IgZgkQgkgsgUgRQgegYhAgaIAngVIAKAEQAiAcAtAwQA6A6AGAZIACAdIgBAQIgSgogACxAlQgIgPgkgaIgrgjIgNgVIAEAOQgcgyg1gHIgmgUQAegIAFgBIATAKQA8AnAhAaQA6AxAaA+IgQgRgACWg4QgZgUgTgLIgzgdIgjgUIAdgFIBdA3QAxAcAZgCIgBAHQgQAIgQACg").shape;

		shape_18 = _draw(13.9,-8.5)
		.f(0xFF796100).s().p("AjUCbQAEgPgEgPQgEgUgOgPIAAAAIAGgMQAKAJAGASQAGAQgCANIABABIABAAQAEgIACgRQAEgPAAgIIgFgUIgHgaIAGgMQAIAQAGApQABARgIAVQgIATgLANgABgBdIgNgYIgIgOIgEgHIgGgIQgIgQgVgXQgegegcgQIgBgBIgegQIgFgCIg2gYIAHgFQAyAMA2AnQAjAcAWAXIAZAkIASApIABgQIgCgdQgFg1gKgpIgEgPIANAWQAAAgAaAVIAHAGQgRgIgIgFIAEAiIABAKIAAAGIAAAQIgCASIgCAQIgBACgADHBIQgHgbgegRIARABIAQARQAAgvgSgmQAGAAAPgIQAMgIAHgGIABgHQgugLgKgGQgggag5gqIALgCQAaARAyAqQArAgAcgKQgNAoglADQAIAJAIASQAKATAAALIgCAYQgCAQgEAGg").shape;

		addChild(shape_18);
		addChild(shape_17);
		addChild(shape_16);
		addChild(shape_15);
		addChild(shape_14);
		addChild(shape_13);
		addChild(shape_12);
		addChild(shape_11);
		addChild(shape_10);
		addChild(shape_9);
		addChild(shape_8);
		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Head extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;
	Shape shape_8;
	Shape shape_9;
	Shape shape_10;
	Shape shape_11;
	Shape shape_12;
	Shape shape_13;
	Shape shape_14;
	Shape shape_15;
	Shape shape_16;
	Shape shape_17;
	Shape shape_18;
	Shape shape_19;

	_Player_Head() {
		// Calque 3
		shape = _draw(-9.8,17.3)
		.f(0xFFCF764B).s().p("Ag8AAIAEgJIAAAAIAIgVQAIgHAGgMIALgXQAKA3AkAvQAOASAYAYQgwghhJgng").shape;

		shape_1 = _draw(-16.9,-2.4)
		.f(0xFF3C003C).s().p("AhBBWIgngmQgNgNgEgNQgCgNAAggQAAgvATgrQALgWASgeIgSBZQAAAnALAOQANAJAIAHQAFgTAhguQAfguANgIQgOAdgSA4QgSAzAAAIQAAANAGALQAIANAOAAQACAAAegkIBehuQgoA5hNDBIgDAHQgjgugjgig").shape;

		shape_2 = _draw(-4.4,-8.1)
		.f(0xFF2B002B).s().p("AjcCDQgvgzAAgvQAAiYBrhHQBPg2B2AAQBBAABCAVQBMAZAYAnIAAABIgyAJIgkAGIgDABIgZAGIgSAGIgVAJIgYAOIgKAHIgLAJIgOANQgVAYgLAPQgOATgYAtIgHAMIgIAQIgMAWIgFAMIgaA4QgHARgXBAIgIAUIAAABQgqgxhEhBgAhjjMQg4AbgtBFQgRAegLAWQgUArAAAtQAAAiADANQADANANANIAoAmQAiAiAmAuIACgHQBNjDAmg3QAegsBRguQBZgyAxAMQhwhDhbAAQhcAAg1AZg").shape;

		shape_3 = _draw(-2.9,-14)
		.lf([0xFF3C003C,0xFF970198],[0,1],-33.1,12.6,1.2,-21.7).s().p("AiiCeQgHgLAAgNQAAgIATg1QATg4APgbQgOAIghAsQghAugFATQgHgHgOgJQgKgOAAgnIARhXQAthFA3gbQA2gZBcAAQBbAABvBDQgwgMhZAyQhRAugcAqIhdBwQgfAkgEAAQgOAAgHgNg").shape;

		shape_4 = _draw(22.6,-19.8)
		.f(0xFFFFDF62).s().p("AA1CBQgeg1g1geQhDgdgjgSIgFgEQAcAFATADIATAGIgkgZIADAAQAKAABiAQQAIABAKAAQBFAAAmgjIAJgHIgKAgQgXAZgTAKQgUALgZAAQgfAAgWgEIASAKIAYATQgIgCgBACIAWAmQATAjABAGgAgygRIglgJIAkgGIAJACIAQACQAgAAAXgRIAIgHQgLANgKAIQgTAQgfAAQgIAAgIgCgABDgzQAEgMAAgHQAAgYgDgDIgPAXQAKgTACgdIACgSQAKAgAAAOQAAAJgCARQgFAZgHAQg").shape;

		shape_5 = _draw(-0.1,-0.2)
		.f(0xFFCCCCCC).s().p("AAAAAIAAAAIAAAAg").shape;

		shape_6 = _draw(-1.5,-3.3)
		.f(0xFF53D5FF).s().p("AAAAAIAAAAIAAAAg").shape;

		shape_7 = _draw(8.9,15.3)
		.f(0xFFFFFFFF).s().p("AgiABQgNgUgFgCIABAAQAJAHAdAHQAiAIAggBQgCAGgFAEIgGAFIgBABQgLAGgPAAQgdAAgSgVg").shape;

		shape_8 = _draw(7.8,13.2)
		.f(0xFF070609).s().p("AgmAPIgSgfQAUAPAkAEIAxAGQAZADAGAJQgJACgNAJQAFgFABgGQgfACgigLQgdgHgKgFIAAAAQAFAAANAWQASAWAcAAQAPAAALgHIACgBIgDADQgSANgIAAQgkAAgZglgAhPgyIABgBIAAABIgBAAg").shape;

		shape_9 = _draw(15.3,9.9)
		.f(0xFFF4AD82).s().p("AhgBcIgNgMIgBgCIgBgHQAAgGABAAQABABAAAAQABAAAAAAQAAAAAAAAQABAAAAgBIAeAQQAEADABAKIgHABQgHAAgKgDgAgBhSIAQgLIACgBQAEADAtAVQApASAFAJIgUACQg1AAgogpg").shape;

		shape_10 = _draw(12.3,-0.5)
		.f(0xFF0098CA).s().p("AhXAfIA3gxQAVAAANAKQAPAJAAAPQgcAQgMAFQgKAEgLAAQgOAAgdgKgABaATQgIgBgOgGIgMgHQAKgFAzgLQAGAAACABIABACIAAACQAAAJgLAIQgKAIgOAAIgBAAgAh3ghQAHgHAIAAQAGAAAFACIAJAEIgnAlQgHgYALgMg").shape;

		shape_11 = _draw(11.9,-2.8)
		.f(0xFF33CCFF).s().p("AAGANQgNgKgVAAQACgBADgFQAEgHAFAAQAeAAAXAJQAMACAGAEIBOgKQAAAGgFAMIgBgCQgCgBgGAAQgyALgLAHIgEgEIgDABIggAOQABgPgQgLgAh3AaQgKgPgEgOIABgBQABgQAJgKQAHgIAJAAIARAEIAXAHIgOAQIgIgEQgGgCgGAAQgIAAgGAHQgLAKAGAag").shape;

		shape_12 = _draw(11.7,-2.2)
		.f(0xFF006F93).s().p("AhzAlQgegeAAgkQAAgSAGgJQAIgKAQAAQAlAABJAYQAiALAeAMQAUAAAegEIAAgCIAKgBQAOAAAJABIADALQADAKgMATQgLAUgJAHIACAAIgXgGQAQAAAKgIQALgIAAgLIAAgCQAEgKAAgIQgMgGgMADQgWAGgbAAQgPAAhCgXQhDgYgcAAQgKAAgHACQgDATAAAHQAAAKABAHIAAABQAFAOAKAPIAAAAQALAQAZAMQAdAKAOAAQALAAAKgEQAMgFAcgQIAggOIgEAIIgSALQgIAFgdAMQggAMgFAAQgrAAgfgeg").shape;

		shape_13 = _draw(11.8,-2.6)
		.f(0xFFAEEBFF).s().p("Ah2AYIAAAAIAngmIAOgPIgYgHIgQgEQgJAAgIAIQgIAJgCARIgBAAQgBgHAAgKQAAgHADgUQAHgBAKAAQAcAABDAYQBCAWAPAAQAbABAWgGQAMgEAMAHIhNAJQgGgCgMgEQgXgIgeAAQgGAAgEAGQgDAGgBAAIg3A0QgZgMgLgQg").shape;

		shape_14 = _draw(8,5.3)
		.f(0xFFF19761).s().p("Ag8DEQglgPgZgVQgcgrgSg0QgQgtAAgXQAAgFANgmQAOATAEAMQACAHAAALQAAAJgCAFIACABQALgNAIgSQAHgUAAgRQgHgqgHgQQAbgvANgTQALgPAVgYQAnAFAiAHQgNACgbAOQgYAMgFAFIAFgDIgIAIIgCACIAGABIAsgNQArgMAOACIARAKIABAAQgCgFgFgIIBXAyQAHAVACANIAAADQgeAEgUAAQgegMgkgLQhHgYglAAQgQAAgIAKQgGAJAAASQAAAmAeAeQAfAeArAAQAEAAAfgMQAfgMAIgFQAxAuBBgJQABAKgKAOQgLAHgeAJQgeAJgHAAIgPgCIgWgDQAEANAWARQAVAPAKAAIgfBWQgTAmgmAAQgqAAgvgSgAgeCUQAOAKAVAAQANAAAHgDQAGgDAHgJQgJADgXgDQgVgCgIgDQAQAFAHgDQAAgKgFgDIgdgQQAAAAgBABQAAAAAAAAQAAAAgBAAQAAgBgBAAQgBAAAAAGIABAHIgJgKQAAAWAQAMgAgoBfQAZAkAkAAQAIAAASgNIADgDIAGgEQANgJAJgCQgGgIgZgEIgxgGQgkgGgUgPIASAigAhRAbIABABIAAgCg").shape;

		shape_15 = _draw(6.7,6.7)
		.f(0xFF552D17).s().p("AAyDYIhLgBIgXgGIABgCQgjgLgUgRQgZgZgOgSQglgxgLg2IgKAWQgHAMgHAHQAWg/AHgPQACAWANAmQAWA9AmAdQAZAVAlAPQAvASAqAAQAmAAATgmIAfhWIAKgXQgYAAgMgDIgJgEIgJgHQARAGAPAAQALAAAVgIQAZgLANgPQAKgMgBgKQgFgJgpgSQgsgVgEgDIgCABIAEgIIADgBIAEAEIAMAHQAOAGAIAAIAWAHQAVAIANAJQAMAJAAAGQAAAXgJAMQgEAGgSANQgnAbgSBDQgLAsgFALQgHASgNAGQgJADgVAAIgKAAgACWiWIgIgSQgMACgBgDQADgGAFgDIgEgFIAZARIALAyIgKAAQgCgNgHgVgAgVjHQAZgOAPgCQAigDAKASQAFAIACAFIgBAAIgRgKQgVgFgKAAQgdAAgQAGIgVALIgFADQAFgFAYgMg").shape;

		shape_16 = _draw(6.9,1.9)
		.f(0xFFCD784B).s().p("AirBoQgNgmgCgYIAag3IAAABQgNAjABAGQAAAZAPAsQASA0AdAsQgngegWg8gAgSC1QgQgLgBgWIAJAJIABACIANAMQAJAEAUACQAXACAJgDQgHAJgGADQgHADgNAAQgUAAgOgKgABhBsQgWgQgEgOIAWAEIAPABQAHAAAegJQAegJAMgGQgNAPgaAKQgUAIgMAAQgPAAgQgFIAJAGIAJAEQALADAZAAIgLAYQgJAAgWgQgAA9iYQgKgTgiAEQgigIgngFIAOgNQAPAABBAVQBBAUAMAHIARAKIADAFQgFADgDAFQABAEANgDIAIATIhYgygAg4h/IABgCIAJgIIAUgMQARgGAcAAQAKAAAVAGQgOgCgrAMIgsAMIgFAAg").shape;

		shape_17 = _draw(12.4,-10)
		.f(0xFFDDB000).s().p("Ai9CVQABgNgFgQQgGgSgKgJIALgWQAAAFAHAZQAHAWgEAbgAAWg1QhAgbgrgCIAJgHQAhgBA2AWQA8AYAeAfQgbgTg0gVgACMgYQgFgJgCgBIgZgUIAbAIQANADAGAAQALABAtgXQgGAMgOAPQgVAVgUAAQgFAAgEgHgAAKhdQgQgFgdgFIAGADIgWgDIAUgJQASAGAVAJIAVAKIgTgGgAgBhzIgLgDIAWgGQBAAWAQAAQALgBAYgKQAfgQAOgUIgFAXQAFAMgDAEQgEAGg5AFIABABQhlgQgHgBg").shape;

		shape_18 = _draw(14,-12.3)
		.f(0xFFFFCC00).s().p("AjMCtQAFgbgHgWQgIgZAAgEIAJgQIAHAaIAFAUQAAAIgEAQQgCAQgEAIgABVAIQgegdg6gYQg4gWggACIAYgPIAWAEQAjAUBAAdQA3AcAfA1Ig3gugAB3gXIgbgHIgUgKQAYAEAgAAQAZAAATgLQAUgKAXgbQgMAfgIAMQguAWgLAAQgGAAgNgEgAgGhJQgWgKgTgGIATgGIALAEIgDAAIAiAbIgUgJgAgEhkIAEgBIAjAJQAHACAJAAQAfAAAVgQQAKgIALgNQAJgJAHgNIAOgXQADADABAYQAAAHgEAMQgNAVggAPQgYALgLAAQgQAAg+gVg").shape;

		shape_19 = _draw(14.6,-14.8)
		.f(0xFF796100).s().p("AjbDbQACgFAAgKQAAgMgCgHQgEgNgOgSIAAgBIAFgMQALAKAGARQAFARgBANIABAAIABAAQADgIADgQQAEgQAAgIIgFgUIgIgaIAHgMQAHAQAHApQAAASgHAUQgIAUgLAMgACSBpQgYgbgrgfIgZgQIgQgKQgMgHg/gSQhDgVgPAAIAMgJQArACBAAbQA0AUAbASIA2AuIALAMQgCgGgTgjIgVgmQABgCAIACQACACAFAIQAEAHAFAAQAUAAAVgVQAOgNAGgLQAIgMANgfIAKggIgKAHQgmAlhFAAQgKAAgHgDIgBAAQA5gGAEgGQADgEgFgLQAIgQAEgZQADgRAAgJQAAgOgLggIgBASQgDAdgKATQgGANgJAJIgJAHQgXARghAAIgRgCIgJgCIAygKIAAAAQAQgGAVgdQAcgkAAglQAAgJgDgJIACACQAZAzAAASQAAANgDAYQgEAagEAOQAogSApgcQAMAoguA3QgpAvggAGQAIAOAHASQAKAZAAANIAAAIIgCACg").shape;

		addChild(shape_19);
		addChild(shape_18);
		addChild(shape_17);
		addChild(shape_16);
		addChild(shape_15);
		addChild(shape_14);
		addChild(shape_13);
		addChild(shape_12);
		addChild(shape_11);
		addChild(shape_10);
		addChild(shape_9);
		addChild(shape_8);
		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Forearm_Left extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;

	_Player_Forearm_Left() {
		// Calque 1
		shape = _draw(38.1,9.9)
		.lf([0xFF980101,0xFFFD1C1C],[0,1],-5.4,-12.6,17.2,-9.4).s().p("AAABRIgEgFQAAgGACgFIADgJIAPAHIAOAGQgHADgCAEIgGAPQgLgFgEgFgAgoBEQgJgLAGguQgMgIgHAAQgMgCgNAYQAGgUABgVQApAKAFgiQADgWACgFQAGgPARgDQgNAMgDAZQgBAPABAeIgxgCIAGACIAfAHIAPgFQAHAKAKAHQAHAGAAACQAAAEgYAzQgPgEgGgHgAAIA4QgIgEAAgFQABgFAKgDQAKgFAPgBQAPgBADABQgIAPgEAPQgagCgIgFgAASARIAGgNQAHgNAGgTIAiACQgGANgCANIgCARIABAIQgogCgEgGgAgOgeQAAgKACgNQAEgZAIgMIANABQAFADAAAMQAAAWgKANQgJAMAAAIQAAADACAIQAFAIAIAFIgHABQgVAAAAgkgAAogkQAKgkACgPQgBgCAHAAIAGABQgCAIgCASIgDAWQANAFASACg").shape;

		shape_1 = _draw(39.6,8.5)
		.f(0xFFEC1717).s().p("AAABoIAGgPQACgDAHgEQAPADAcAAQgKAMgRAGQgJACgJAAQgHAAgGgBgAhWBZQgVgKAAgWIABgFIABgIIACgFIAAgBQANgYANACQAHABALAHQgFAuAJALQAFAHAQAEQgMACgLAAQgRAAgMgFgAAmAuQAFAAAMgEQANgCANAMQgFAKgTAHQgQAGgOABQAEgPAHgPgAAvAmIgBgIIACgRQABgNAGgMQAbABANAJQANAHgEALQgEALgSAGQgOAFgPAAIgGAAgAgMADQgEgFAAgDQAAgJAKgMQAJgNAAgWQAAgMgDgCIgOgBIAAgBIgHAFQgSADgGAPQgCAFgDAWQgEAggpgIQADgcAcgiQAggnAhAAQAaAOAAATQAAAUgMAiQgLAdgEAHQgHgGgFgKgAAqgbIACgVQACgTACgIQAmAJAIAEIABAAQAFADADAEQAFAGAAAJQAAANgHADIgcAEQgTgCgMgFg").shape;

		shape_2 = _draw(37.4,8.6)
		.f(0xFF2D080A).s().p("AhEBdQhFgTgBgIIACgKQADgiAFgTIAAANQAAAYAHARQAHARAKAAQAKAAAIgRIACgFIgBAFQAAAWAVAJQATAJAhgFQAXgzAAgEQAAgCgIgGQgJgHgHgMIgOAHIgggJIgGgDIAxADQAAgcABgPQACgZANgNIAGgFIAAABQgIAMgEAZQgCAMAAALQAAAqAcgHQAGgHALgcQAMgjAAgTQAAgTgagPQghAAggAoQgcAigDAcQgBAVgHAUIAAAAQACgKAAgMQAAgWgHgSQgIgRgKAAQgHAAgGAJIACgJIACgKIAlAJQACgOAfgaQAigfAbAAQBFAdAeAWIgBAAQgIgEgmgJIgGgBQgGAAAAACQgBAPgLAkIAxADIAcgEQAHgDAAgNQAAgJgFgHQAOANAAAKIgGAmQAAAZghAqQghAqgSAAQgtAAhIgVgAADBNQgDAFAAAHIAFAFQAGAFALAEQAOAEARgFQARgFAKgMQgcAAgPgDIgOgGIgPgIIgFAJgAAqAuQgPABgKAEQgKAEgBAFQAAAFAIAEQAJAEAaADQAOgBAQgGQATgIAFgKQgNgMgNACQgMAFgFAAIgFgBIgNABgAAeARIgGANQAEAGApACQASABARgGQASgHAEgKQAEgLgNgHQgNgJgbgCIgigCQgFARgIAPg").shape;

		shape_3 = _draw(8.7,4.3)
		.lf([0xFFF19761,0xFFB9623E],[0,1],9.2,-7.2,-8.6,2.2).s().p("AhnAzQgpgfAAhBQAAgOADgIQAXgKAbgCQgYAOgNAQIAkgQQAfgOASgBQAlABAoAgQAyAoA8ANQgGANgBgCQgDAOgNApIhlAIQhTAAgogdg").shape;

		shape_4 = _draw(8.8,6)
		.f(0xFFBA643F).s().p("Ah7A0QgkgbgHhAIANgoIALgGQgDAJAAAOQAABBApAeQAoAeBTAAIBlgIQANgqADgNQABACAGgLIAYAGIABAAIgLAgQgFATgDAiIh1AEQhuAAgtgig").shape;

		shape_5 = _draw(26.9,10.2)
		.f(0xFF112635).s().p("AgQApQgHgSAAgXIAAgLIALgjIAAgCQAGgJAGAAQAKAAAHARQAHASAAAWQAAAMgCAKIgCAFIgBAIIgCAGQgHARgKAAQgJAAgHgRg").shape;

		shape_6 = _draw(8.2,5.3)
		.f(0xFF552D17).s().p("AhdBcQhRgaAAhMQAAgLAHgSQAIgVAMgMIgOAoQAIBAAkAbQAtAiBuAAIB1gEIgDAKQhIAHg3AAQhKAAgsgOgACsACIgXgEQg8gPgzgoQgnghglAAQgSAAggAOIgkARQAOgQAXgOQAJgGAIgDQAOgHAWAAQAQAABQAtQBYAvAZAFIgBAIIgBACIgBAAg").shape;

		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Forearm extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;

	_Player_Forearm() {
		// Calque 1
		shape = _draw(41.7,21.3)
		.lf([0xFF980101,0xFFFD1C1C],[0,1],10.1,10.2,0.1,-5).s().p("AhQA9IgVgmQAAgQAPgdQATgoAcgTIBWgQQACAAAMAJQANAKAIALIAAADQAGADgKAAQgDAAgQgIQgRgIgFgCIgQgBQAGANAsAhQAiAbgDAdQgJANgFADIgGADIgjAgQgPAGgSALQgMAIgHAAQgsAAgfglg").shape;

		shape_1 = _draw(10.8,7.4)
		.lf([0xFFF19761,0xFFB9623E],[0,1],11.4,-4,1.3,10).s().p("Ag8AgQg5ghgngSQgFgFgMgpQACgCAYgRQAYgPAcgEIgGACIAIgCQAagEASAAQBAAAAlAdIB6B0QgFAGgQAeQgQAdgCAFQiBgohCgkgAh1ghQAGAJA/AYQA4AUA0AOQgjgUgigRQhHgjgegCIgHAHg").shape;

		shape_2 = _draw(43.2,22.9)
		.f(0xFF9C0202).s().p("AhVA5QgqglAAgJQAAgaAggqQAcgmANgCQgcATgTAoQgPAfAAAOIAVAmQAfAlAsAAQAJAAALgHQARgMAPgGQgTAPgMAHIABADQAVgDAegZQAQgNANgNIAIgEQgEAPgfAbQgmAggfAAQgZAAgugpgABgAVQALgSAAgFQAAgGgBgCIgEgGQgFgGgCgGQABAIgCALQgDAJgEAGQADgcgigbQgsgigGgNIAQACQAFABARAJQAQAHADABQAKAAgGgEIAAgDIAVAgIg1ghIgEgCQAUAfApAYQAkAUAAAFQAAAfgdAAg").shape;

		shape_3 = _draw(9.7,11.1)
		.f(0xFFBA643F).s().p("AgaAWQhZgmgegoQAnARA5AjQBCAiCBAoIgCAIQhXgRhTgngAglgmQg/gYgGgJIAHgGQAeABBFAkQAkASAjAUQg0gOg4gWg").shape;

		shape_4 = _draw(30.2,17)
		.f(0xFF112635).s().p("AgoBBIgJgCQgCgBAAgHIAAgDQAAgnAZgoQAYgnAQABIAKAFQANAIAPAMQguA5gIAUQgGANAAARQgWgBgKgBg").shape;

		shape_5 = _draw(40.5,21.5)
		.f(0xFF070609).s().p("AhLBEQgtgegXgTQALACAVAAQAAgRAGgLQAKgUAvg7QgQgMgNgIIgJgFQgTAAgYAnQgZAqAAAlIAAACQgIgIgCgDIACgWIACgIQACgFAQgdQARgeAEgGIAOgOQATgBAdAOIAbAOQAFAAArgKQAtgJAEAAQBkBfAAAWQAAALgHALQgIANgNAAQgLAAgLAMIgVAZQghAkgyAAQgLAAhLgxgAgahTQgNACgdAmQgfApAAAbQAAAIAqAmQAtApAYAAQAgAAAmggQAggbAEgPIgJADQgNAOgPANQgfAZgUACIgBgCQALgHAUgPIAiggIAGgDQAGgDAJgNQAEgGACgLQACgJgBgIQADAGAFAGIAEAEQABACAAAGQAAAHgMASIAEAEQAcgBAAghQAAgEgjgSQgqgYgUggIAEADIA2AhIgVggQgIgLgOgKQgLgJgCAAg").shape;

		shape_6 = _draw(11.4,8)
		.f(0xFF552D17).s().p("AhaA3QhUg3gHgoIADgfQAMApAFAFQAdAmBaApQBTAnBWARIgCAVQh2gKhhhCgAAvhVQglgchAAAQgSAAgaAEIgIACIAGgCQAbgIASgIQAJgFAUAAQBAAAA5A3QAhAfA2A+IgNAOIh6h1g").shape;

		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Chest_3 extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;

	_Player_Chest_3() {
		// Calque 1
		shape = _draw(1.8,-45.3)
		.f(0xFF1291C7).s().p("AhLCyQhbAAgZgMIAEgQQDjAKAqADIArADIAAAOQg4gDiQABgABVCVIAehiQAchbACgKIAKgfIAKgDQAMgDAMgCQg+DhgCAVgACeizIAiAAQgEAMAAAIIglAGg").shape;

		shape_1 = _draw(1.3,-62.4)
		.f(0xFF15ABEA).s().p("AgUF+QiFgDgrgJIAKghQAaAMBbAAQCQgBA3ADQAAAHADAZIiZgBgACcAQIAlgHQADAOABAWQAAAWgDANQgMACgLADIgKADQAEgogJgggACWh6QgGgTgRgmQgZg6gegiIAbgRIAAAAQBDBiAYAwQAWArAAAjQgEAqgKANIgjABQgGhXgHgbgAjKldIgJghQB1ADA1AHQBdAJBGAbIgPAWQi7gnh6AEg").shape;

		shape_2 = _draw(-3.6,-49.4)
		.lf([0xFF030118,0xFF0D023E],[0,1],-58.3,97.9,-75.7,67.8).s().p("AiBHAQgrgeAAhDQAAgXAKgkQAFgUALggQArAKCCACICbABIAGBXQAABfg/AeQgeAPhFAAQhsAAgvgggAgKC6QhWgBgggCQgFgIgHghIAAgLQAAg9gOgtQgFgPgJgTQgShRgahhQARAMADAAQAgAAAEgiIAGhJQAYhrDZgBQgOgJg1gTQg/gXghAAQhBAAgoAtIAjgvIgLgkQB6gDC8AnIgMAWIACADIABABIgbAQQAfAiAZA6QgFgDg4gOQg2gOgIAAQgQAAgKAOQgLAOAAAaQAAA8AzArQA4AwBZgDIgHAaQhagFgZALQgSAHAAAeQAAATASAQQAUAQAbAAQAIAAAbgIQAbgIAKgGIgKAfQgjAKgdA8QgcA6gFBEIhxgBg").shape;

		shape_3 = _draw(-4,-62)
		.f(0xFF180479).s().p("ABrE5QAFhDAcg7QAdg8AjgMQgCAKgcBdIgeBigABfBaQgSgQAAgTQAAgeASgHQAZgLBaAFQAIAggEAoQgKAGgbAIQgbAJgIAAQgbAAgUgRgABIg4QgzgsAAg8QAAgZALgPQAKgOAQAAQAIAAA2AOQA4AOAFADQARAmAFAUQAHAbAHBXIgLAAQhRAAg1gtgAjQg9QgDgLgCgXIgDgdQAAgaAQgyQAMgmALgXIAEgJQAogtBBAAQAhAAA/AXQA1AUAOAJQjZAAgYBrIgGBKQgEAhggAAQgDAAgRgMg").shape;

		shape_4 = _draw(-1.5,-47.9)
		.f(0xFF0B0233).s().p("AiQHjQhCg+AAhVQAAgXAZhOQAWhEACgnQAHAgAGAJQAgABBVABIByACIAlACIAoAIQABgUA+jhQADgNAAgWQgBgWgDgOQAAgHAFgNQAKgOAEgqQAAgigWgrQgYgxhEhhIAAgBIgDgDIAMgWIAPgWQhHgbhcgKQg1gGh1gDIAJAhIALAkIgkAuQAagzAAgDQAAgUgIgOQgKgVgDgNIBDgCQA6AAA/AIQBqAMA/AfQgfAwAAABQAeAnAfAuQA8BcAAAnQAAAzgKAYIgLAPQAAAFAEALQAEALAAAFQAAAfghBeQgiBfAAA3IAICcQAABVgfA0QggAzhjAMQgRACgNAAQhPAAg3g1gAidDBIgKAhQgKAggFAUQgKAkAAAXQAABDArAdQAuAgBsAAQBFAAAfgPQA/geAAhfIgHhWQgCgZAAgHIABgOIgsgEQgqgDjigKgAjOg5QgvhWAAhoQAAg1AphRIAKgVQgLAYgLAlQgQAzAAAZIACAeQADAWADAMQAaBhARBRIgRgig").shape;

		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Chest_2 extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;

	_Player_Chest_2() {
		// Calque 1
		shape = _draw(14.8,-44.1)
		.f(0xFF1291C7).s().p("AhaCUQALgTA6hNQA+haAyhuQAAANgOAxQgRA5gQAdQgDAHgbAmQgaApgfA+g").shape;

		shape_1 = _draw(-2.2,-61.8)
		.f(0xFF15ABEA).s().p("AiEF9QgOgEgMgGQABgIAIgOQAIgMABABICUADQCQAEANgCIgBAnQh5AFgSAAQiCABgbgHgACok+QgmgOhNgLQhkgPh6AAQAAgGgEgVIBLgCQA+AEA5AFIARABQBKAIAhAIQAdAHAAAJQAAAHgGAUg").shape;

		shape_2 = _draw(-3.9,-46.5)
		.lf([0xFF030118,0xFF0D023E],[0,1],-58.1,95.1,-75.5,64.9).s().p("AhjHpQhdhVABhUQAAgLAchPQAchOAAgVQABg3gZg1QgMgZgqhAQgmg7gQgoQgYg+AAhHQAAg7AZg0QAmhJBHACQgEgLgGgXIgEgWQAAgOAaAAQBtALBKAIQg5gFg+gDIhLACQAEAUAAAHQB6AABkAOQBNALAmAOIAAAAQAGgUAAgHQAAgIgdgHQAfAFAMAFQgJAtgFAMIgCAGQAaApAaAuQA0BcAAAgQgBASgJAUQgLAVAAAMQAAAGAEAOIADAPQgyBthABaQg6BNgLAUIAuAAQAgg/AcgoQAbgmADgIQgaBcgPBqQgKBogHAmQgKA9gPAqQgPAqhHAgQgUAKgVAAQg2AAhDg+gAiEDFQgIANgBAIQAMAHAOADQAbAHCCAAQASAAB5gGIABgmQgNABiQgEIiUgDQgBAAgIAMgAA1iLQg8A8gJA0QAnAGBYg3QBcg6AAguQAAgJgQgPQgOgPgOgGQhbBIgPAOgAhKmVQg6A5gBBlQABB7AuAAQBTAABRhjQBJhYABg6QgBhWhqAAQhEAAgzAygAkEi4QA3AoAFgBIAEgCQABgLgGhjQAAhvAehJIgKgOQg1AcgYAuQgVApAAA8QAAA2ASAnQASArgSgqg").shape;

		shape_3 = _draw(-7.7,-70.8)
		.f(0xFF180479).s().p("AAVDVQAJg0A+g7QAPgOBahJQAPAHAOAOQAPAPAAAKQABAthdA6QhOAygpAAIgJgBgAhegEQAAhlA6g6QAxgxBHAAQBqAAAABWQAAA5hKBXQhTBihQAAQgvAAAAh4gAjdA4IgCgCQATArgTgrQgRgngBg0QABg8AVgpQAXguA1gdIAKAPQgdBJgBBvQAHBhgBAKIgFACIAAAAQgGAAg1gng").shape;

		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class _Player_Chest extends Sprite {
	Shape shape;
	Shape shape_1;
	Shape shape_2;
	Shape shape_3;
	Shape shape_4;
	Shape shape_5;
	Shape shape_6;
	Shape shape_7;
	Shape shape_8;

	_Player_Chest() {
		// Calque 1
		shape = _draw(-0.3,-46.8)
		.f(0xFF1291C7).s().p("AhDDIIhpgHIADgIIE3AAIAEAPIg2AEIgvABQgUAAhcgFgABcCuIALAAQgDgRgDgcIgCgjQAAgmAQiAIAIgcIAzgGIgRBqQgQBhAAAlIADAnIgwACQgJAAAJgBgAB6i7IAGgRIAoADQADAIACAIg").shape;

		shape_1 = _draw(-1.5,-62.8)
		.f(0xFF15ABEA).s().p("AixGCQAIgIAJgZIBoAHQBcAFAVAAIAvgBIA1gEIAHANIAGAPQgCAAgEgDQAAgBgBAAQAAAAAAABQgBAAAAABQAAABAAABQAAAHg9ACIhFABQhSAAh/gMgACHgJIgCgPIABgDIAyACQAEApgGAkIgzAGQAIgrgEgYgACMgsQgBgmhBg/IhRhOIgGgUIgFgQQAAgJAogHIAFAJQA2A0AiArQBCBPgBAzgACEkAQgfgvgJgHIgHgZQgFgWgBgOQgCgZgCAAIAcgBQAJAAAXAEQAaAFAQAFIgdA6QgJARAAACQAAANAfBbQgGgGgggwgAg6lVIgvgDIhFACIgKgeQA2gFAiAAQBHAAAYAQQAMAKgCAQQgYgDgrgDg").shape;

		shape_2 = _draw(-4.2,-98.6)
		.f(0xFF552D17).s().p("ABpgTIABAGQABANAFAUIAIAaIgKAKIgFhLgAh3geIAQgWIACgCQAAAAABAAQAAAAAAAAQAAAAABAAQAAAAAAAAIAAgBIACABQAEADgEAHQgEAJABAEIgSABQgBAAAAAAg").shape;

		shape_3 = _draw(10.1,-82.6)
		.f(0xFFCCCCCC).s().p("AAUAVQhCg8gbgiQAIgBATgJQAUgJAEgGQAuAzASAkQAVAmALBJQgKgngsgog").shape;

		shape_4 = _draw(-3.8,-100.4)
		.f(0xFFBA643F).s().p("AAuA9IgEg9QgTAAg9gHQg4gHgKACIAAAAQgBgEAEgJQAEgIgEgDQgBgDAEgGIAHgHIAggYQAfgUAVAAQAvABAWAKIAYATIAJAWIAAAIQADAbADAJIAFBLQgLAKgMAHQgIAFgDAAQgUAAgGgkg").shape;

		shape_5 = _draw(-4.5,-49.7)
		.lf([0xFF030118,0xFF0D023E],[0,1],-57.5,98.3,-74.9,68.1).s().p("AiAG5QglgbAAhEQABgwAUgOQARgKAxAEQBkAIAJABQBTACBQgQQAGArAAAdQAABQgvAdQghAWhEAAQiEgBgwgigAh8DNQACgIACgeIADglQAAgugMgYQgRgfgBgDIALAEQhOhfgbgyQgfg9gBhEQABhVA4g3QAcgcAdgLQAegWA1AFQgkgEgaACQABgDgCgKQgCgLgDgHIBFgBIAvACQApADAaAEQAAAFAGAYIAHAeQgqAHAAAJIAEAQIAHAUQgSgEgYgDQgSgCgMAAQggAAgVAUQgVATAAAXQALA9APATQAUAzBAANQA4ANB7gOIgQgBQgNgCAAgGQAAgGgFgBIAngBIgFARIgBADIACAPQhWAMhgADQgWAAgFADQgGADABAKQAAAZAZAhQAYAhAYAAQAUAAA0gXIBAgeIgIAdQg6APgtAgQgmAeAAASQAJBGAAALIgHBGIhjACIgmgBgADfgxQAHgWAAgHQAfAEANAGIgMAbgADjiqQAJg0AAgcQAAgogahIIgbhGIAIgPIACABIAHAEIAFAEQAMAHALAYIgBAHQADApACALQAEALAHAAQACABAGAUQAGAcAAAmIgMBFQAAAHACAEIADACg").shape;

		shape_6 = _draw(20.9,-74.6)
		.f(0xFF0D023E).s().p("AgSBwQgCgPgGgVIAYACQAWAAAFgBIgBAPQAAAGABAFIACAOgAAChwIgCgEIAAABIACADgAAFhyIACABIgBAAIgBgBg").shape;

		shape_7 = _draw(4.1,-59.9)
		.f(0xFF180479).s().p("AhADrQAAgKgJhGQAAgTAmgdQArgiA6gQQgPCCAAAmIACAjQADAcADARIiCABgAB0C6QANhiAIglIAnAIQgaAvgWBGQgQA4gKA7IAOhpgAhuAwQgZggAAgXQgBgKAGgDQAFgDAWAAQBigEBUgLQAEAagJApIhAAdQgyAYgUAAQgZAAgZgigACQAWQAFgdgBgZIAvAEQAAAigHAaQgNgGgfgEgACihFQgDgDAAgHIAMhGQAAglgGgcQgGgVgCAAQgHAAgEgLQgCgLgDgpIABgHIANAXIgEgIIALARIAHALIgBgBIACAEIABAAIAMAXQAdA2AAArQgBAQgGAYQgGATgGAMQgFACgYAAgAhahUQhKgMgVgYQgPgSgLg9QAAgXAVgTQAVgUAgAAQAMAAASACQAaACASAFIBQBOQBCA/AAAmIgnABQgFgCgJACQhQgFgogHg").shape;

		shape_8 = _draw(-3.5,-48.4)
		.f(0xFF0B0233).s().p("AiAH0QhEhIAAhVQAAhVAcgmQAbglAAhDQAAgfgZgxQgKgUguhKQhRiGAAhPQAAhcApgoQASgRBRglIgRhEIA1gGIATgBIAAAAQAKgCA4AHQA9AHATAAIAEA/QAGAkAUAAQADAAAIgFQAMgHALgKIAKgKQAJAHAeAuQAhAwAGAHQgfhcAAgMQAAgDAIgQIAeg7QgQgFgagEQgXgEgJAAIgdAAQACAAADAaIgCgGQgDgJgDgbIABADQA7gFAmAJQAdAHAAAHIgQAZQgPAXAAAQQAAAIADAJIgHgFIgCgBIgIAPIAbBHQAaBHAAAoQAAAcgJA0QAFAVACAPQABAZgFAfQAAAIgHAWQgIAlgNBfIgOBqQAKg8AQg3QAWhFAaguIAMgcQAHgaAAgjIgBgOQgCgFAAgHIABgOQAGgNAGgTQAGgXABgQQAAgsgdg1IgMgXIgCgEIgHgLIAIAJIADAEIABABQA2A+AAA4QAAAOgMAfQgMAfAAAPQAAAyguCSIgvCVIANBDQgBALAEAgQAEAgAAAKQgBBbgmA3QgnA3hfAUQgUAEgSAAQhGAAg2g5gAiaEQQgUANgBAwQAABEAlAbQAwAjCEAAQBEAAAhgVQAvgeAAhPQAAgegGgrQhQAQhTgCQgJAAhkgJIgYgCQgdAAgNAJgAiMDRQgKAZgHAIQB/AMBSAAIBFgBQA9gCAAgGQAAgCAAgBQAAgBAAAAQABgBAAABQABAAAAAAQAEAEACAAIgHgPIgGgNIgDgQIk4AAgAiLAwQAMAXAAAvIgDAkQgCAegCAIQAdADBsgEICEgBIgMABQgJAAAJABIAxgCIgEgoQAAglAQhjIAShoQAGgjgEgrQgBgJgDgIQABgyhChQQgigqg2g0IgFgKIgHgdQgGgYAAgGQABgRgOgJQgVgQhHAAQgiAAg3AEIALAeQADAIACAKQACAKgBAEQAagDAkAEQg1gEgeAVQgdAMgcAbQg4A3gBBVQABBEAfA9QAbAzBOBfIgLgFQABAEARAfgABYmoQgSAJgJABQAbAiBFA+QAsAoAKAmQgLhIgVgoQgSgkgxg0QgDAHgVAJgAgZipQhAgOgUgzQAVAYBKAMQAmAGBSAFQAJgBAFABQAFABAAAGQAAAGANACIAQABQhBAHgvAAQgqAAgZgFg").shape;

		addChild(shape_8);
		addChild(shape_7);
		addChild(shape_6);
		addChild(shape_5);
		addChild(shape_4);
		addChild(shape_3);
		addChild(shape_2);
		addChild(shape_1);
		addChild(shape);
	}
}

class Platform3 extends Sprite {
	Placeholder p0;
	Platform3_img1x instance;

	Platform3() {
		// platforms
		p0 = new Placeholder()
		..setTransform(0,-69.8,3.745,1);

		// design
		instance = new Platform3_img1x()
		..setTransform(-35.7,-293.5);

		addChild(instance);
		addChild(p0);
	}
}

class Platform2 extends Sprite {
	Placeholder p2;
	Placeholder p1;
	Placeholder p0;
	Platform2_img1x instance;

	Platform2() {
		// platforms
		p2 = new Placeholder()
		..setTransform(472.7,10,1.951,1);

		p1 = new Placeholder()
		..setTransform(218,45.3,1.582,1);

		p0 = new Placeholder()
		..setTransform(0,-77.9,2.536,1);

		// design
		instance = new Platform2_img1x()
		..setTransform(-82.3,-265.2);

		addChild(instance);
		addChild(p0);
		addChild(p1);
		addChild(p2);
	}
}

class Platform1 extends Sprite {
	Placeholder p0;
	Placeholder p1;
	Platform1_img1x instance;

	Platform1() {
		// platforms
		p0 = new Placeholder()
		..setTransform(0,-0.9,2.51,1);

		p1 = new Placeholder()
		..setTransform(457,-99.9,0.886,1);

		// design
		instance = new Platform1_img1x()
		..setTransform(-35.8,-229);

		addChild(instance);
		addChild(p1);
		addChild(p0);
	}
}

class Intro extends MovieClip {
	Fade fade;
	Intro_score mcScore;
	BtnPlay btnPlay;
	Intro_legal legal;
	Foreground instance;
	Cloud_1 cloud0;
	Cloud_1 cloud3;
	Cloud_1 cloud2;
	Cloud_1 cloud1;
	Sky instance_1;

	Intro([String mode, int startPosition, bool loop])
			: super(mode, startPosition, loop, {}) {
		// timeline functions:
		void frame_39() {
			stop();
			btnPlay.onMouseUp.listen((e) { play(); });
		}
		void frame_52() {
			// this is Dart code!
			stop();
			dispatchEvent(new Event("startGame", true));
		}

		// actions tween:
		timeline.addTween(_tween(this).wait(39).call(frame_39).wait(13).call(frame_52));

		// fade
		fade = new Fade()
		..setTransform(574.5,360,1,1,0,0,0,574.5,360);

		timeline.addTween(_tween(fade).to({"alpha":0.051},9,_ease(-0.99)).to({"off":true},1).wait(36).to({"off":false},0).to({"alpha":1},5).wait(2));

		// mcScore
		mcScore = new Intro_score()
		..setTransform(573,317.4)
		..alpha = 0.051
		..off = true;

		timeline.addTween(_tween(mcScore).wait(33).to({"off":false},0).to({"alpha":1},6).wait(14));

		// btnPlay
		btnPlay = new BtnPlay()
		..setTransform(570.3,407.2,0.466,0.466)
		..alpha = 0.18
		..off = true;
		new ButtonHelper(btnPlay, 0, 1, 2, new BtnPlay("synched", 3));

		timeline.addTween(_tween(btnPlay).wait(24).to({"off":false},0).to({"scaleX":1.25,"scaleY":1.25,"alpha":1},5,_ease(1)).to({"scaleX":1.14,"scaleY":1.14},4,_ease(-0.99)).to({"scaleX":1,"scaleY":1},4,_ease(1)).wait(2).to({"scaleX":1.53,"scaleY":1.53,"alpha":0.18},4).to({"off":true},1).wait(9));

		// legal
		legal = new Intro_legal()
		..setTransform(569.1,689.7);

		timeline.addTween(_tween({}).to({"state":[{"t":legal}]}).wait(53));

		// foreground.png
		instance = new Foreground();

		timeline.addTween(_tween({}).to({"state":[{"t":instance}]}).wait(53));

		// clouds
		cloud0 = new Cloud_1()
		..setTransform(278.2,604.1,0.935,0.935);

		cloud3 = new Cloud_1()
		..setTransform(1222.3,604.1);

		cloud2 = new Cloud_1()
		..setTransform(774.2,584.1);

		cloud1 = new Cloud_1()
		..setTransform(494.2,604.1);

		timeline.addTween(_tween({}).to({"state":[{"t":cloud1},{"t":cloud2},{"t":cloud3},{"t":cloud0}]}).wait(53));

		// sky.jpg
		instance_1 = new Sky();

		timeline.addTween(_tween({}).to({"state":[{"t":instance_1}]}).wait(53));

	}
}

class EnergyDrink extends MovieClip {
	EnergyDrink_img instance;

	EnergyDrink([String mode, int startPosition, bool loop])
			: super(mode, startPosition, loop, {}) {
		// Calque 1
		instance = new EnergyDrink_img()
		..setTransform(17.9,5.8);

		timeline.addTween(_tween(instance).to({"y":-34},6,_ease(1)).to({"y":5.8},6,_ease(-0.99)).to({"y":35.8},6,_ease(1)).to({"y":11},5,_ease(-0.99)).wait(1));

	}
}

class _HUD_NHRgauge_draw_solid_bg extends Sprite {
	EnergyDrink instance;
	_TC_PlayBtn_BG_draw_hole instance_1;
	_TC_PlayBtn_BG_draw_hole instance_2;
	_TC_PlayBtn_BG_draw_hole instance_3;
	_TC_PlayBtn_BG_draw_hole instance_4;
	_TC_PlayBtn_BG_draw_hole instance_5;
	_TC_PlayBtn_BG_draw_hole instance_6;
	_TC_PlayBtn_BG_draw_hole instance_7;
	_TC_PlayBtn_BG_draw_hole instance_8;
	_TC_PlayBtn_BG_draw_hole instance_9;
	_TC_PlayBtn_BG_draw_hole instance_10;
	_TC_PlayBtn_BG_draw_hole instance_11;
	_TC_PlayBtn_BG_draw_hole instance_12;
	_TC_PlayBtn_BG_draw_hole instance_13;
	_TC_PlayBtn_BG_draw_hole instance_14;
	_TC_PlayBtn_BG_draw_hole instance_15;
	_TC_PlayBtn_BG_draw_hole instance_16;
	_TC_PlayBtn_BG_draw_hole instance_17;
	_TC_PlayBtn_BG_draw_hole instance_18;
	_TC_PlayBtn_BG_draw_hole instance_19;
	_TC_PlayBtn_BG_draw_hole instance_20;
	_TC_PlayBtn_BG_draw_hole instance_21;
	_TC_PlayBtn_BG_draw_hole instance_22;
	_TC_PlayBtn_BG_draw_hole instance_23;
	_TC_PlayBtn_BG_draw_hole instance_24;
	Shape shape;
	Shape shape_1;

	_HUD_NHRgauge_draw_solid_bg() {
		// Calque 2
		instance = new EnergyDrink("synched",0)
		..setTransform(160,34,1.253,1.253);

		// Calque 1
		instance_1 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(301.5,73.1)
		..alpha = 0.25;

		instance_2 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(282.9,45.1)
		..alpha = 0.25;

		instance_3 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(301.5,15.1)
		..alpha = 0.25;

		instance_4 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(264.5,73.1)
		..alpha = 0.25;

		instance_5 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(245.9,45.1)
		..alpha = 0.25;

		instance_6 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(264.5,15.1)
		..alpha = 0.25;

		instance_7 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(227.5,73.1)
		..alpha = 0.25;

		instance_8 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(208.9,45.1)
		..alpha = 0.25;

		instance_9 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(227.5,15.1)
		..alpha = 0.25;

		instance_10 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(190.2,73.1)
		..alpha = 0.25;

		instance_11 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(151.6,73.1)
		..alpha = 0.25;

		instance_12 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(113.1,73.1)
		..alpha = 0.25;

		instance_13 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(74.5,73.1)
		..alpha = 0.25;

		instance_14 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(36,73.1)
		..alpha = 0.25;

		instance_15 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(171.6,45.1)
		..alpha = 0.25;

		instance_16 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(133.1,45.1)
		..alpha = 0.25;

		instance_17 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(94.5,45.1)
		..alpha = 0.25;

		instance_18 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(56,45.1)
		..alpha = 0.25;

		instance_19 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(17.4,45.1)
		..alpha = 0.25;

		instance_20 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(190.2,15.1)
		..alpha = 0.25;

		instance_21 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(151.6,15.1)
		..alpha = 0.25;

		instance_22 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(113.1,15.1)
		..alpha = 0.25;

		instance_23 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(74.5,15.1)
		..alpha = 0.25;

		instance_24 = new _TC_PlayBtn_BG_draw_hole()
		..setTransform(36,15.1)
		..alpha = 0.25;

		shape = _draw(750,45)
		.f().s(0xFF15ABEA).ss(5,2,0,3).rr(-750,-45,1500,90,38).shape;

		shape_1 = _draw(750,45)
		.lf([0xFF36C2FF,0xFF01B2FF],[0,1],-451.6,38.9,-451.6,-45).s().p("EhvPAHCQidgBhwhvQhvhvAAidIAAiLQAAidBvhwQBwhvCdAAMDeeAAAQCeAABvBvQBwBwAACdIAACLQAACdhwBvQhvBvieABgEhDTgCeQhCBCAABcIAAAAQAABcBCBCQBCBCBdAAMCvgAAAQBdAABBhCQBChCAAhcIAAAAQAAhchChCQhBhChdAAMivgAAAQhdAAhCBCg").shape;

		addChild(shape_1);
		addChild(shape);
		addChild(instance_24);
		addChild(instance_23);
		addChild(instance_22);
		addChild(instance_21);
		addChild(instance_20);
		addChild(instance_19);
		addChild(instance_18);
		addChild(instance_17);
		addChild(instance_16);
		addChild(instance_15);
		addChild(instance_14);
		addChild(instance_13);
		addChild(instance_12);
		addChild(instance_11);
		addChild(instance_10);
		addChild(instance_9);
		addChild(instance_8);
		addChild(instance_7);
		addChild(instance_6);
		addChild(instance_5);
		addChild(instance_4);
		addChild(instance_3);
		addChild(instance_2);
		addChild(instance_1);
		addChild(instance);
	}
}

class Player extends MovieClip {
	_Player_Forearm instance;
	_Player_Shoulder_Right instance_1;
	_Player_Head_2 instance_2;
	_Player_Head instance_3;
	_Player_Thigh_Right instance_4;
	_Player_Shin_Right instance_5;
	_Player_Chest_3 instance_6;
	_Player_Chest instance_7;
	_Player_Chest_2 instance_8;
	_Player_Thigh_Left instance_9;
	_Player_Shin_Left instance_10;
	_Player_Forearm_Left instance_11;
	_Player_Shoulder_Left instance_12;

	Player([String mode, int startPosition, bool loop])
			: super(mode, startPosition, loop, {"run":0,"jump":30,"floor":55,"sit":56,"fall":61}) {
		// timeline functions:
		void frame_29() {
			gotoAndPlay(1);
		}
		void frame_52() {
			if (props["state"] == "jump") stop();
		}
		void frame_60() {
			gotoAndPlay(3);
		}
		void frame_67() {
			if (props["state"] == "fall") stop();
		}

		// actions tween:
		timeline.addTween(_tween(this).wait(29).call(frame_29).wait(23).call(frame_52).wait(8).call(frame_60).wait(7).call(frame_67));

		// _Player_Forearm0
		instance = new _Player_Forearm()
		..setTransform(-18,-142.2,0.999,0.999,0.64)
		..applyCache(-8,-6,68,43);

		timeline.addTween(_tween(instance).to({"rotation":0.74,"x":-42.4,"y":-154},3).to({"rotation":1.40,"x":-51.3,"y":-212.1},3).to({"rotation":1.53,"x":-47.5,"y":-170.8},3).to({"regX":0,"rotation":1.36,"x":-36,"y":-131.2},3).to({"regX":0,"rotation":0.38,"x":-0.6,"y":-135.1},3).to({"rotation":-0.63,"x":23.6,"y":-139},3).to({"rotation":-1.63,"x":57.4,"y":-164.9},3).to({"rotation":-1.09,"x":37.3,"y":-127.8},3).to({"regX":0,"rotation":-0.02,"x":5.5,"y":-114.5},3).to({"scaleX":1,"scaleY":1,"rotation":0.42,"x":-10.1,"y":-133},2).to({"regX":0,"scaleX":1,"scaleY":1,"rotation":1.36,"x":-7.9,"y":-177.5},1).to({"rotation":0.00,"x":-50.6,"y":-207},8,_ease(1)).to({"rotation":0.00,"x":-62.6,"y":-204},2).to({"rotation":0.00,"x":-63.1,"y":-198.1},6,_ease(-0.99)).to({"rotation":0.00,"x":-63.6,"y":-192},6,_ease(1)).to({"x":-53.6,"y":-172},3).to({"rotation":-1.19,"x":-50,"y":-121.1},1).to({"rotation":0.74,"x":-35.4,"y":-154},4,_ease(-0.99)).to({"rotation":0.38,"x":-0.6,"y":-135.1},1).to({"rotation":0.00,"x":-60.1,"y":-168.1},6).wait(1));

		// _Player_Shoulder0
		instance_1 = new _Player_Shoulder_Right()
		..setTransform(2.4,-181.6,1,1,-0.16,0,0,0,0.1)
		..applyCache(-36,-12,51,53);

		timeline.addTween(_tween(instance_1).to({"rotation":0.09,"x":-11.4,"y":-187.2},3).to({"regY":0,"rotation":1.00,"x":-6.7,"y":-205.9},3).to({"regY":0.1,"rotation":0.61,"x":-6.2,"y":-182},3).to({"regY":0.2,"rotation":0.05,"x":-6.8,"y":-162.5},3).to({"regY":0.1,"rotation":-0.43,"x":7.8,"y":-177.5},3).to({"regX":0.1,"rotation":-0.88,"x":13.8,"y":-183.4},3).to({"regX":0,"regY":0,"rotation":-1.76,"x":18.4,"y":-187},3).to({"regY":0.1,"rotation":-0.96,"x":26.1,"y":-169},3).to({"regY":0.2,"rotation":-0.36,"x":19.7,"y":-154.7},3).to({"scaleX":1,"scaleY":1,"rotation":-0.23,"x":8.2,"y":-172.6},2).to({"regY":0.1,"scaleX":1,"scaleY":1,"rotation":0.02,"x":19.9,"y":-212},1).to({"regY":0,"rotation":0.92,"x":-5.8,"y":-204.4},8,_ease(1)).to({"x":-17.8,"y":-201.4},2).to({"scaleX":1,"scaleY":1,"x":-18.3,"y":-195.5},6,_ease(-0.99)).to({"scaleX":1,"scaleY":1,"x":-18.8,"y":-189.4},6,_ease(1)).to({"x":-8.8,"y":-169.4},3).to({"rotation":0.66,"x":-3.9,"y":-131.4},1).to({"regY":0.1,"rotation":0.09,"x":-4.4,"y":-187.2},4,_ease(-0.99)).to({"rotation":-0.43,"x":7.8,"y":-177.5},1).to({"regX":0.1,"rotation":0.40,"x":-19.9,"y":-188.2},6).wait(1));

		// _Player_Head
		instance_2 = new _Player_Head_2()
		..setTransform(22.3,-220,1,1,-0.03)
		..applyCache(-32,-34,72,66);

		instance_3 = new _Player_Head()
		..setTransform(18.4,-238.2,1,1,-0.03)
		..off = true
		..applyCache(-32,-38,74,69);

		timeline.addTween(_tween(instance_2).to({"x":17.7,"y":-225.6},3).to({"x":18.1,"y":-234},2).to({"off":true},1).wait(9).to({"x":22.3,"y":-219.5,"off":false},0).to({"x":17.7,"y":-225.6},3).to({"x":18.1,"y":-233.9},2).to({"off":true},1).wait(9).to({"x":26.8,"y":-251.4,"off":false},0).to({"scaleX":1,"scaleY":1,"rotation":-0.05,"x":17.2,"y":-232.8},7,_ease(1)).to({"off":true},1).wait(22).to({"scaleX":1,"scaleY":1,"rotation":-0.04,"x":17.7,"y":-225.6,"off":false},0).to({"x":22.3,"y":-219.5},1).to({"off":true},6).wait(1));
		timeline.addTween(_tween(instance_3).wait(6).to({"off":false},0).to({"x":25.5,"y":-216.8},3).to({"x":22.9,"y":-199.2},3).to({"x":22.5,"y":-212.7},2).to({"off":true},1).wait(6).to({"x":18.4,"y":-237.9,"off":false},0).to({"x":25.5,"y":-216.8},3).to({"x":22.9,"y":-199.2},3).to({"x":22.5,"y":-212.9},2).to({"off":true},1).wait(8).to({"x":17.1,"y":-232.8,"off":false},0).to({"rotation":0.09,"x":4.6,"y":-235.9},2).to({"scaleX":1,"scaleY":1,"rotation":0.19,"x":5.9,"y":-228.1},6,_ease(-0.99)).to({"scaleX":1,"scaleY":1,"rotation":0.35,"x":7.1,"y":-220.4},6,_ease(1)).to({"rotation":0.48,"x":25.1,"y":-200.8},3).to({"rotation":0.17,"y":-155.8},1).to({"scaleX":1,"scaleY":1,"rotation":0.18,"x":24.4,"y":-193.3},3,_ease(-0.99)).to({"off":true},1).wait(7).to({"scaleX":1,"scaleY":1,"rotation":0.35,"x":7.1,"y":-220.4,"off":false},0).wait(1));

		// _Player_Thigh0
		instance_4 = new _Player_Thigh_Right()
		..setTransform(-5.5,-107.5,1.092,1.083,0,0.32,0.52);

		timeline.addTween(_tween(instance_4).to({"skewX":-0.20,"skewY":-0.00,"x":-9.4,"y":-112.9,"mode":"independent"},3).to({"skewX":0.17,"skewY":0.36,"x":-18.6,"y":-125.5},3).to({"skewX":0.26,"skewY":0.46,"x":-13.2,"y":-107.1},3).to({"skewX":0.21,"skewY":0.40,"x":-18.4,"y":-95.4},3).to({"skewX":0.74,"skewY":0.94,"x":-21,"y":-108.1},3).to({"skewX":1.53,"skewY":1.73,"x":-31.5,"y":-111.6},3).to({"skewX":2.26,"skewY":2.46,"x":-34.8,"y":-131.9},3).to({"skewX":1.75,"skewY":1.95,"x":-28.2,"y":-112.1},3).to({"skewX":1.13,"skewY":1.33,"x":-18.4,"y":-95.4},3).to({"scaleX":1.09,"scaleY":1.08,"skewX":0.59,"skewY":0.79,"x":-10.2,"y":-103.4},2).to({"scaleX":1.09,"scaleY":1.08,"skewX":1.46,"skewY":1.66,"x":25.8,"y":-135.9},1).to({"skewX":0.11,"skewY":0.31,"x":6.4,"y":-112.4},8,_ease(1)).to({"skewX":-0.23,"skewY":-0.03,"x":-16.5,"y":-122.5},2).to({"scaleY":1.08,"skewX":-0.23,"skewY":-0.02,"x":-16.1,"y":-115},6,_ease(-0.99)).to({"scaleY":1.08,"skewY":-0.03,"x":-15.5,"y":-107.5},6,_ease(1)).to({"scaleX":0.76,"skewX":0.47,"skewY":0.55,"x":-17.6,"y":-93.2},3).to({"skewX":-0.28,"skewY":-0.19,"x":-10.1,"y":-48.2},1).to({"scaleX":1.09,"skewX":-0.20,"skewY":-0.00,"x":-9.4,"y":-112.9},4,_ease(-0.99)).to({"skewX":0.74,"skewY":0.94,"x":-21,"y":-108.1},1).to({"skewX":0.56,"skewY":0.76,"x":-19.2,"y":-111.7},6).wait(1));

		// _Player_Shin0
		instance_5 = new _Player_Shin_Right()
		..setTransform(35.6,-63.1,1.058,1.047,0,1.31,1.47)
		..applyCache(-23,-10,48,81);

		timeline.addTween(_tween(instance_5).to({"skewX":0.52,"skewY":0.68,"x":47.7,"y":-92.3},3).to({"scaleX":1.05,"skewX":-0.68,"skewY":-0.71,"x":27.5,"y":-85.9},3).to({"scaleX":1.06,"skewX":-0.19,"skewY":-0.03,"y":-64},3).to({"scaleX":1.13,"scaleY":0.97,"skewX":0.42,"skewY":0.03,"x":24.6,"y":-54.6},3).to({"scaleX":1.05,"scaleY":1.05,"skewX":0.84,"skewY":0.87,"x":-0.9,"y":-50.6},3).to({"scaleX":1.05,"skewX":0.69,"skewY":0.60,"x":-58.2,"y":-57},3).to({"scaleX":1.06,"skewX":2.55,"skewY":2.36,"x":-90.9,"y":-111.7},3).to({"scaleX":1.05,"skewX":2.34,"skewY":2.39,"x":-67.4,"y":-67.9},3).to({"scaleX":1.09,"scaleY":0.93,"skewX":1.99,"skewY":2.29,"x":-23.7,"y":-38.4},3).to({"scaleX":1.07,"scaleY":1.01,"skewX":1.54,"skewY":1.74,"x":15.8,"y":-54.8},2).to({"scaleX":1.09,"scaleY":1.05,"skewX":0.54,"skewY":0.82,"x":-0.7,"y":-73.2},1).to({"scaleX":1.1,"scaleY":1.05,"skewX":0.96,"skewY":1.27,"x":42.3,"y":-68.5},4,_ease(1)).to({"scaleX":1.1,"scaleY":1.05,"skewX":1.10,"skewY":1.41,"x":53.8,"y":-76},4,_ease(1)).to({"scaleX":1.05,"skewX":0.76,"skewY":0.66,"x":40.1,"y":-103.7},2).to({"scaleX":1.05,"scaleY":1.05,"skewY":0.66,"x":40.5,"y":-96.3},6,_ease(-0.99)).to({"scaleX":1.05,"scaleY":1.05,"skewY":0.66,"x":38.8,"y":-89.9},6,_ease(1)).to({"scaleX":1.08,"skewX":0.44,"skewY":0.18,"x":3.4,"y":-59},3).to({"skewX":1.09,"skewY":0.83,"x":24.3,"y":-39},1).to({"scaleX":1.06,"skewX":0.52,"skewY":0.68,"x":47.7,"y":-92.3},4,_ease(-0.99)).to({"scaleX":1.05,"skewX":0.84,"skewY":0.87,"x":-0.9,"y":-50.6},1).to({"scaleX":1.06,"skewX":0.50,"skewY":0.65,"x":8,"y":-55.6},6).wait(1));

		// _Player_Chest
		instance_6 = new _Player_Chest_3()
		..setTransform(-18.3,-102.3,1,1,0.4)
		..applyCache(-28,-103,55,111);

		instance_7 = new _Player_Chest()
		..setTransform(-24.1,-121.9,1,1,0.41)
		..off = true
		..applyCache(-35,-111,65,122);

		instance_8 = new _Player_Chest_2()
		..setTransform(-18,-106.6,1,1,0.37)
		..off = true
		..applyCache(-34,-103,63,114);

		timeline.addTween(_tween(instance_6).to({"rotation":0.37,"x":-17.9,"y":-106.5},3).to({"scaleX":1,"scaleY":1,"rotation":0.39,"x":-21.9,"y":-116.6},2).to({"off":true},1).wait(6).to({"scaleX":1,"scaleY":1,"rotation":0.40,"x":-18.8,"y":-83.2,"off":false},0).to({"rotation":0.40,"x":-18.2,"y":-102.2},3).to({"scaleX":1,"scaleY":1,"rotation":0.38,"x":-18,"y":-105},2).to({"off":true},1).wait(9).to({"scaleX":1,"scaleY":1,"rotation":0.40,"x":-18.8,"y":-83.2,"off":false},0).to({"scaleX":1,"scaleY":1,"rotation":0.40,"x":-18.4,"y":-95.8},2).to({"off":true},1).wait(30).to({"scaleX":1,"scaleY":1,"rotation":0.37,"x":-17.9,"y":-106.5,"off":false},0).to({"rotation":0.40,"x":-18.2,"y":-102.2},1).to({"off":true},6).wait(1));
		timeline.addTween(_tween(instance_7).wait(6).to({"off":false},0).to({"rotation":0.48,"x":-22.6,"y":-103.7},3).to({"scaleX":1,"scaleY":1,"rotation":0.43,"x":-20.1,"y":-90},2).to({"off":true},1).wait(18).to({"scaleX":1,"scaleY":1,"rotation":-0.14,"x":44.5,"y":-130.3,"off":false},0).to({"rotation":-0.04,"x":12.6,"y":-110.4},8,_ease(1)).to({"rotation":0.10,"x":-12.7,"y":-116.7},2).to({"rotation":0.09,"x":-12.2,"y":-109.1},6,_ease(-0.99)).to({"rotation":0.10,"x":-11.7,"y":-101.7},6,_ease(1)).to({"rotation":0.22,"x":-9.6,"y":-87},3).to({"x":-4.6,"y":-42},1).to({"scaleX":1,"scaleY":1,"rotation":0.30,"x":-12.1,"y":-78.2},3,_ease(-0.99)).to({"off":true},1).wait(7).to({"scaleX":1,"scaleY":1,"rotation":0.10,"x":-11.7,"y":-101.7,"off":false},0).wait(1));
		timeline.addTween(_tween(instance_8).wait(18).to({"off":false},0).to({"rotation":0.41,"x":-24,"y":-121.8},3).to({"rotation":0.48,"x":-22.6,"y":-103.7},3).to({"off":true},3).wait(41));

		// _Player_Thigh
		instance_9 = new _Player_Thigh_Left()
		..setTransform(-19.1,-109.1,1.13,1.208,0,0.75,0.68)
		..applyCache(-10,-9,68,44);

		timeline.addTween(_tween(instance_9).to({"skewX":1.56,"skewY":1.49,"x":-26.2,"y":-112.4},3).to({"skewX":2.38,"skewY":2.31,"x":-22.8,"y":-135},3).to({"skewX":1.85,"skewY":1.78,"x":-19.5,"y":-114.2},3).to({"skewX":1.07,"skewY":1.00,"x":-22.1,"y":-97.9},3).to({"skewX":0.29,"skewY":0.22,"x":-5.3,"y":-106.4},3).to({"skewX":-0.27,"skewY":-0.34,"x":-10.6,"y":-113},3).to({"skewX":0.28,"skewY":0.21,"x":-15.7,"y":-127.1},3).to({"skewX":0.23,"skewY":0.15,"x":-14.5,"y":-104.2},3).to({"skewX":0.25,"skewY":0.18,"x":-12.9,"y":-95.1},3).to({"scaleX":1.13,"scaleY":1.21,"skewX":0.58,"skewY":0.51,"x":-17,"y":-104.3},2).to({"scaleX":1.13,"scaleY":1.21,"skewX":1.42,"skewY":1.35,"x":48.4,"y":-133},1).to({"skewX":-0.11,"skewY":-0.18,"x":25.8,"y":-125},8,_ease(1)).to({"skewX":-0.62,"skewY":-0.69,"x":7.3,"y":-127.9},2).to({"scaleX":1.13,"skewX":-0.04,"skewY":-0.11,"x":6.3,"y":-122.6},6,_ease(-0.99)).to({"scaleX":1.13,"skewX":0.54,"skewY":0.47,"x":5.3,"y":-117.4},6,_ease(1)).to({"skewX":0.24,"skewY":0.16,"x":4.7,"y":-99.9},3).to({"skewX":-0.50,"skewY":-0.57,"x":8.7,"y":-58.4},1).to({"skewX":1.56,"skewY":1.49,"x":-26.2,"y":-112.4},4,_ease(-0.99)).to({"skewX":0.29,"skewY":0.22,"x":-5.3,"y":-106.4},1).to({"skewX":0.54,"skewY":0.47,"x":1.8,"y":-117.4},6).wait(1));

		// _Player_Shin
		instance_10 = new _Player_Shin_Left()
		..setTransform(0.7,-57.1,1.031,1.112,0,-2.01,-2.26)
		..applyCache(-51,-61,63,68);

		timeline.addTween(_tween(instance_10).to({"scaleX":1,"scaleY":1,"rotation":-1.90,"skewX":0.00,"skewY":0.00,"x":-49.8,"y":-58.3},3).to({"scaleX":1.06,"scaleY":1.21,"rotation":0.00,"skewX":-0.19,"skewY":-0.51,"x":-76.9,"y":-113.5},3).to({"scaleX":1,"scaleY":1,"rotation":-0.45,"skewX":0.00,"skewY":0.00,"x":-56.3,"y":-68.4},3).to({"scaleX":1,"scaleY":1,"rotation":-0.71,"x":-17.1,"y":-38.2},3).to({"scaleX":1,"scaleY":1.01,"rotation":0.00,"skewX":-1.43,"skewY":-1.40,"x":36,"y":-64},3).to({"scaleY":1,"skewX":-2.42,"skewY":-2.39,"x":47.6,"y":-98.4},3).to({"scaleX":1.06,"scaleY":1.21,"skewX":-3.40,"skewY":-3.73,"x":29.2,"y":-85.8},3).to({"scaleX":1.01,"scaleY":1.14,"skewX":-2.77,"skewY":-2.94,"x":31.1,"y":-67},3).to({"scaleX":0.97,"scaleY":1.05,"skewX":-2.22,"skewY":-2.44,"x":33.8,"y":-57.8},3).to({"scaleX":1.01,"scaleY":1.09,"skewX":-2.09,"skewY":-2.33,"x":11.6,"y":-57.3},2).to({"scaleX":1.01,"scaleY":1.11,"skewX":-2.32,"skewY":-2.15,"x":32,"y":-80.1},1).to({"scaleX":1.02,"scaleY":1.15,"skewX":-1.96,"skewY":-1.88,"x":66.6,"y":-81},3,_ease(1)).to({"scaleX":1.03,"scaleY":1.18,"skewX":-1.74,"skewY":-1.71,"x":86.9,"y":-104.1},5,_ease(1)).to({"scaleX":0.98,"scaleY":1.24,"skewX":-2.25,"skewY":-2.40,"x":70.8,"y":-139.8},2).to({"scaleX":0.99,"scaleY":1.24,"skewX":-2.77,"skewY":-3.04,"x":54.5,"y":-102.6},6,_ease(-0.99)).to({"scaleX":1,"scaleY":1.24,"skewX":-3.29,"skewY":-3.67,"x":38.2,"y":-65.3},6,_ease(1)).to({"skewX":-2.54,"skewY":-2.93,"x":50.8,"y":-66},3).to({"skewX":-2.64,"skewY":-3.02,"x":65.6,"y":-64.3},1).to({"scaleX":1,"scaleY":1.18,"skewX":-1.96,"skewY":-2.25,"x":53.5,"y":-47.8},2,_ease(-0.99)).to({"scaleY":1.1,"skewX":-1.70,"skewY":-1.87,"x":15.6,"y":-36},1).to({"scaleX":1,"scaleY":1,"rotation":-1.90,"skewX":0.00,"skewY":0.00,"x":-49.8,"y":-58.3},1).to({"scaleY":1.01,"rotation":0.00,"skewX":-1.43,"skewY":-1.40,"x":36,"y":-64},1).to({"scaleX":0.95,"scaleY":1.19,"skewX":-2.50,"skewY":-2.73,"x":34.8,"y":-65.3},6).wait(1));

		// _Player_Forearm
		instance_11 = new _Player_Forearm_Left()
		..setTransform(12,-136.7,0.996,0.996,0.74)
		..applyCache(-10,-6,65,29);

		timeline.addTween(_tween(instance_11).to({"rotation":-0.56,"x":26.6,"y":-139.6},3).to({"regY":0.1,"rotation":-1.45,"x":51.4,"y":-163.4},3).to({"rotation":-1.00,"x":40.9,"y":-136.7},3).to({"rotation":-0.22,"x":6.5,"y":-117.2},3).to({"regY":0,"rotation":1.00,"x":-3.1,"y":-148.4},3).to({"rotation":0.75,"x":-41.7,"y":-162.8},3).to({"regY":0.1,"rotation":1.80,"x":-50,"y":-208.3},3).to({"rotation":1.87,"x":-46.5,"y":-166.2},3).to({"regX":0,"rotation":1.19,"x":-29.5,"y":-134.1},3).to({"regY":0,"scaleX":1,"scaleY":1,"rotation":0.89,"x":-1.6,"y":-135.8},2).to({"regX":0,"scaleX":1,"scaleY":1,"rotation":0.74,"x":35,"y":-176.6},1).to({"rotation":-0.80,"x":42.7,"y":-182.9},8,_ease(1)).to({"regY":0.2,"rotation":-1.05,"x":38.2,"y":-192},2).to({"scaleX":1,"scaleY":1,"rotation":-0.53,"x":36.2,"y":-181.8},6,_ease(-0.99)).to({"regY":0.1,"scaleX":1,"scaleY":1,"rotation":-0.02,"x":34.4,"y":-171.5},6,_ease(1)).to({"regY":0,"rotation":-0.80,"x":51.3,"y":-145.6},3).to({"regY":0.3,"rotation":-1.38,"x":59.8,"y":-107.9},1).to({"regY":0,"rotation":-0.56,"x":26.6,"y":-139.6},4,_ease(-0.99)).to({"rotation":1.00,"x":-3.1,"y":-148.4},1).to({"regY":0.1,"rotation":-0.02,"x":19.3,"y":-156.5},6).wait(1));

		// _Player_Shoulder
		instance_12 = new _Player_Shoulder_Left()
		..setTransform(10.9,-171.4,1.116,1.029,-0.03)
		..applyCache(-12,-10,29,56);

		timeline.addTween(_tween(instance_12).to({"rotation":-0.32,"x":16.8,"y":-172.9},3).to({"rotation":-0.95,"x":26.1,"y":-183.2},3).to({"rotation":-0.50,"x":25.3,"y":-167.8},3).to({"rotation":0.28,"x":17.5,"y":-150.2},3).to({"rotation":0.09,"x":1.2,"y":-183.1},3).to({"rotation":0.72,"x":-17.6,"y":-187.8},3).to({"rotation":1.51,"x":-17.7,"y":-208.5},3).to({"rotation":1.07,"x":-15.2,"y":-182.8},3).to({"rotation":0.64,"x":-8.4,"y":-163.2},3).to({"scaleX":1.12,"rotation":0.18,"x":4.4,"y":-168.6},2).to({"scaleX":1.12,"rotation":-0.17,"x":25.9,"y":-211.8},1).to({"rotation":-1.22,"x":9.8,"y":-194.8},8,_ease(1)).to({"rotation":-1.55,"x":7,"y":-190.5},2).to({"scaleX":1.12,"rotation":-1.39,"x":5.9,"y":-184.2},6,_ease(-0.99)).to({"scaleX":1.12,"rotation":-1.22,"x":4.8,"y":-177.8},6,_ease(1)).to({"x":21.8,"y":-153.8},3).to({"rotation":-1.50,"x":23.8,"y":-108.1},1).to({"rotation":-0.32,"x":16.8,"y":-172.9},4,_ease(-0.99)).to({"rotation":0.09,"x":1.2,"y":-183.1},1).to({"rotation":-0.69,"x":-2,"y":-179},6).wait(1));

	}
}

class _HUD_NRJgauge_draw_solid extends Sprite {
	_HUD_NHRgauge_draw_solid_bg instance;

	_HUD_NRJgauge_draw_solid() {
		// holes
		instance = new _HUD_NHRgauge_draw_solid_bg()
		..setTransform(750,0,1,1,0,0,0,750,45);

		addChild(instance);
	}
}

class BarHolder extends Sprite {
	Shape shape;
	Shape shape_1;
	_HUD_NRJgauge_draw_solid instance;
	Energybarbg instance_1;

	BarHolder() {
		// bubble
		shape = _draw(626.2,117.6)
		.f(0x33FFFFFF).s().rr(-570,-7.5,1140,15,7.5).shape
		..setTransform(626.2,117.6,0.7,0.7);

		// stroke
		shape_1 = _draw(627.7,117.6)
		.f().s(0xFF14AAE9).ss(5,2,0,3).rr(-584.15,-22.5,1168.3,45,22.5).shape
		..setTransform(627.7,117.6,0.7,0.7);

		// Calque 3
		instance = new _HUD_NRJgauge_draw_solid()
		..setTransform(0,117.6,0.7,0.7);

		// Calque 4
		instance_1 = new Energybarbg()
		..setTransform(-18.9,16);

		addChild(instance_1);
		addChild(instance);
		addChild(shape_1);
		addChild(shape);
	}
}

class EnergyBar extends Sprite {
	BarHolder barHolder;
	Bar bar;
	BarBg barBg;

	EnergyBar() {
		// holder
		barHolder = new BarHolder()
		..setTransform(205.3,35.9,0.322,0.322,0,0,0,584.2,121.6)
		..applyCache(-20,14,1094,202);

		// full
		bar = new Bar()
		..setTransform(88.1,29.6)
		..applyCache(-1,-1,267,14);

		// empty
		barBg = new BarBg()
		..setTransform(219.6,34.6,1,1,0,0,0,131.5,5)
		..applyCache(-1,-1,267,14);

		addChild(barBg);
		addChild(bar);
		addChild(barHolder);
	}
}



/* SHORTCUTS */

const _tween = TimelineTween.get;
const _ease = TransitionFunction.custom;
const _draw = _ShapeFactory.create;

class _ShapeFactory {
  Shape _shape;
  Graphics _graphics;
  Function _endFill;
  Function _endStroke;
  num _strokeWidth = 1;
  String _strokeJoints = "miter";
  String _strokeCaps = "butt";
  
  static _ShapeFactory create(num x, num y) {
    return new _ShapeFactory(x, y);
  }
  
  Shape get shape {
    ef(); es();
    return _shape;
  }
  Graphics get graphics {
    ef(); es();
    return _graphics;
  }
  
  _ShapeFactory(num x, num y) {
    _shape = new Shape();
    _graphics = _shape.graphics;
    _shape.x = x.toDouble();
    _shape.y = y.toDouble();
  }
  
  _ShapeFactory beginLinearGradientFill(List<int> colors, List<num> stops, num x0, num y0, num x1, num y1) {
    return lf(colors, stops, x0, y0, x1, y1);
  }
  _ShapeFactory beginRadialGradientFill(List<int> colors, List<num> stops, num x0, num y0, num r0, num x1, num y1, num r1) {
    return rf(colors, stops, x0, y0, r0, x1, y1, r1);
  }
  _ShapeFactory beginBitmapFill(Bitmap image, [String repeat, Matrix mat]) {
    return bf(image, repeat, mat);
  }
  _ShapeFactory beginFill([int color]) {
    return f(color);
  }
  _ShapeFactory endFill() {
    return ef();
  }
  _ShapeFactory beginStroke([int color]) {
    return s(color);
  }
  _ShapeFactory beginLinearGradientStroke(List<int> colors, List<num> stops, num x0, num y0, num x1, num y1) {
    return ls(colors, stops, x0, y0, x1, y1);
  }
  _ShapeFactory beginRadialGradientStroke(List<int> colors, List<num> stops, num x0, num y0, num r0, num x1, num y1, num r1) {
    return rs(colors, stops, x0, y0, r0, x1, y1, r1);
  }
  _ShapeFactory setStrokeStyle(num thickness, [caps, joints, num miterLimit=10, bool ignoreScale=false]) {
    return ss(thickness, caps, joints, miterLimit, ignoreScale);
  }
  _ShapeFactory closePath() {
    return cp();
  }
  
  _ShapeFactory moveTo(num x, num y) {
    _graphics.moveTo(x, y);
    return this;
  }
  _ShapeFactory lineTo(num x, num y) {
    _graphics.lineTo(x, y);
    return this;
  }
  _ShapeFactory curveTo(num cx, num cy, num x, num y) {
    _graphics.quadraticCurveTo(cx, cy, x, y);
    return this;
  }
  _ShapeFactory drawCircle(num x, num y, num radius) {
    return dc(x, y, radius);
  }
  _ShapeFactory drawEllipse(num x, num y, num width, num height) {
    return de(x, y, width, height);
  }
  _ShapeFactory drawRect(num x, num y, num width, num height) {
    return dr(x, y, width, height);
  }
  _ShapeFactory drawRectRounded(num x, num y, num width, num height, num radius) {
    return rr(x, y, width, height, radius);
  }
  _ShapeFactory drawPolyStar (num x, num y, num radius, num sides, num pointSize, num angle) {
    return dp(x, y, radius, sides, pointSize, angle);
  }
  
  // fills
  _ShapeFactory lf(List<int> colors, List<num> stops, num x0, num y0, num x1, num y1) {
    ef();
    var gradient = new GraphicsGradient.linear(x0, y0, x1, y1);
    int n = colors.length;
    for(int i = 0; i<n; i++) {
      gradient.addColorStop(stops[i], colors[i]);
    }
    _endFill = () {
      _graphics.fillGradient(gradient);
    };
    return this;
  }
  _ShapeFactory rf(List<int> colors, List<num> stops, num x0, num y0, num r0, num x1, num y1, num r1) {
    ef();
    var gradient = new GraphicsGradient.radial(x0, y0, r0, x1, y1, r1);
    int n = colors.length;
    for(int i = 0; i<n; i++) {
      gradient.addColorStop(stops[i], colors[i]);
    }
    _endFill = () {
      _graphics.fillGradient(gradient);
    };
    return this;
  }
  _ShapeFactory bf(Bitmap image, [String repeat, Matrix mat]) {
    var bmp = image.bitmapData;
    GraphicsPattern pattern = null;
    if (mat != null) mat.translate(-_shape.x, -_shape.y);
    else mat = new Matrix(1, 0, 0, 1, -_shape.x, -_shape.y);
    switch (repeat) {
      case "repeat-x": pattern = new GraphicsPattern.repeatX(bmp, mat); break;
      case "repeat-y": pattern = new GraphicsPattern.repeatY(bmp, mat); break;
      case "no-repeat": pattern = new GraphicsPattern.noRepeat(bmp, mat); break;
      default: pattern = new GraphicsPattern.repeat(bmp, mat); break;
    }
    _endFill = () {
      _graphics.fillPattern(pattern);
    };
    return this;
  }
  _ShapeFactory f([int color]) {
    if (color == null) color = 0;
    ef();
    _endFill = () {
      _graphics.fillColor(color);
    };
    return this;
  }
  _ShapeFactory ef() {
    if (_endFill != null) {
      _endFill();
      _endFill = null;
    }
    return this;
  }
  
  // stroke
  _ShapeFactory s([int color]) {
    es();
    if (color == null) color = 0;
    _endStroke = () {
      _graphics.strokeColor(color, _strokeWidth, _strokeJoints, _strokeCaps);
    };
    _graphics.beginPath();
    return this;
  }
  _ShapeFactory ls(List<int> colors, List<num> stops, num x0, num y0, num x1, num y1) {
    es();
    var gradient = new GraphicsGradient.linear(x0, y0, x1, y1);
    int n = colors.length;
    for(int i = 0; i<n; i++) {
      gradient.addColorStop(stops[i], colors[i]);
    }
    _endStroke = () {
      _graphics.strokeGradient(gradient, _strokeWidth, _strokeJoints, _strokeCaps);
    };
    return this;
  }
  _ShapeFactory rs(List<int> colors, List<num> stops, num x0, num y0, num r0, num x1, num y1, num r1) {
    es();
    var gradient = new GraphicsGradient.radial(x0, y0, r0, x1, y1, r1);
    int n = colors.length;
    for(int i = 0; i<n; i++) {
      gradient.addColorStop(stops[i], colors[i]);
    }
    _endStroke = () {
      _graphics.strokeGradient(gradient, _strokeWidth, _strokeJoints, _strokeCaps);
    };
    return this;
  }
  _ShapeFactory es() {
    if (_endStroke != null) {
      _endStroke();
      _endStroke = null;
    }
    return this;
  }
  _ShapeFactory ss(num thickness, [caps, joints, num miterLimit=10, bool ignoreScale=false]) {
    _strokeWidth = thickness;
    if (caps != null) {
      switch(caps) {
        case 0: _strokeCaps = "butt"; break;
        case 1: _strokeCaps = "round"; break;
        case 2: _strokeCaps = "square"; break;
        default: _strokeCaps = caps.toString(); break;
      }
    }
    else _strokeCaps = "butt";
    if (joints != null) {
      switch(joints) {
        case 0: _strokeJoints = "miter"; break;
        case 1: _strokeJoints = "round"; break;
        case 2: _strokeJoints = "bevel"; break;
        default: _strokeJoints = joints.toString(); break;
      }
    }
    else _strokeJoints = "miter";
    return this;
  }
  
  _ShapeFactory cp() {
    _graphics.closePath();
    return this;
  }
  _ShapeFactory mt(num x, num y) {
    _graphics.moveTo(x, y);
    return this;
  }
  _ShapeFactory lt(num x, num y) {
    _graphics.lineTo(x, y);
    return this;
  }
  _ShapeFactory c(num cx, num cy, num x, num y) {
    _graphics.quadraticCurveTo(cx, cy, x, y);
    return this;
  }
  _ShapeFactory dc(num x, num y, num radius) {
    _graphics.circle(x, y, radius);
    return this;
  }
  _ShapeFactory de(num x, num y, num width, num height) {
    _graphics.ellipse(x, y, width, height);
    return this;
  }
  _ShapeFactory dr(num x, num y, num width, num height) {
    _graphics.rect(x, y, width, height);
    return this;
  }
  _ShapeFactory rr(num x, num y, num width, num height, num radius) {
    _graphics.rectRound(x, y, width, height, radius, radius);
    return this;
  }
  _ShapeFactory dp(num x, num y, num radius, num sides, num pointSize, num angle) {
    // TODO PolyStar
    return this;
  }
  
  // decodePath
  _ShapeFactory p(String str) {
    _graphics.decode(str);
    return this;
  }
}
