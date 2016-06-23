/* The game loop */
GameLoop game;

/* Background image */
PImage bg;
PImage bgover;

void setup(){
    /* Set the size of the screen */
    size(1280, 720);
    
    /* 
     * Set space-bck image as background 
     * The image must be the same size as the screen
     */
    bg = loadImage("space-bck.png");
    bgover = loadImage("gameover.jpg");

    game = new GameLoop(30);
}

void draw(){
    if(!game.checkCollision()){
        game.move();
        background(bg);
        game.renewShape();
    } else {
        background(bgover);
    }
    
    game.draw();
}