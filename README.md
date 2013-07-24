# Dart Runner demo sources

Dart Runner is a game demonstrating the use of:

* Using Adobe Flash Professional to design game assets,
* Toolkit for Dart to generate a Dart project
* Leveraging StageXL as a Flash-like API rendering in the HTML5 Canvas.

Play now: <http://toolkitfordart.github.io/demo/>


## Flash Pro for the design

The game assets have been designed in Flash Professional CC (<https://creative.adobe.com/products/flash>) and feature:

* An animated intro screen,
* The player character animations,
* The HUD,
* Level blocks and hit boxes.

See **Runner.fla**.

### Optimization hints

* Complex elements/filters (coulds, backgrounds, bonus, HUD shadow) have been flatten as images (right-click > Convert to Bitmap),
* The HUD has "Cache as Bitmap" enabled to flatten the static part at runtime (symbol instance Properties),
* The character parts (head, arm, etc.) are all vectors and have "Cache as Bitmap" enabled (on the first occurence of the element) to be cached at runtime,
* White fade transition is achieved using a large white shape - not by fading the whole scene,
* The level backgrounds are retina capables, thanks to StageXL automatically handling 'image@1x' to 'image@2x' substitution.

## Publish using Toolkit for Dart

Toolkit for Dart (<http://toolkitfordart.github.io>) is a Flash Professional extension which will publish a FLA document into a Dart project leveraging the StageXL Dart library.

* Install the toolkit and launch Flash Pro,
* Open the **Runner.fla**,
* Open the Toolkit for Dart panel (Window > Extensions > Toolkit for Dart),
* Click Publish in the panel to update the Dart project.

## Run in Dart Editor

* Install and launch Dart Editor (<http://www.dartlang.org/tools/>),
* Drag and drop **Runner-dart/** folder from Finder/Explorer in Dart Editor's Files panel,
* Select **pubspec.yaml** in Dart Editor and right-click > Pub Update to download/update StageXL library,
* Open **web/index.dart**
* Press Cmd/Ctrl + R to run the project in Chromium which includes Dart VM

## Test in other browsers

To run the project in navigators not featuring the Dart VM you will cross-compile your project to (unminified) JavaScript:

* Open **web/index.dart**
* Press Cmd/Ctrl + G to generate the JavaScript and script-map files,
* Press Cmd/Ctrl + R to start the local server,
* Copy and paste the URL from Chromium into other browsers.

## Deploy build

To generate a ready-to-deploy optimized project:

* Run **optim.sh** to optimize the images (it will copy some pre-optimize images and run 'pngquant' on the others),
* Select in Dart Editor: Tools > Pub Deploy
* **/deploy** is ready to upload on a webserver
