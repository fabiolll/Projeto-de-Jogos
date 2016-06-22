/* The game loop */
GameLoop game;

/* Background image */
PImage bg;

void setup(){
    /* Set the size of the screen */
    size(1280, 720);
    
    /* 
     * Set space-bck image as background 
     * The image must be the same size as the screen
     */
    bg = loadImage("space-bck.png");

    game = new GameLoop(40);
}

void draw(){
    /* To redraw the background, removing past draws */
    background(bg);

    game.draw();
    game.move();
    game.renewShape();
}