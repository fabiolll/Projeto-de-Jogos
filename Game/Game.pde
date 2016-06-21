Generic g;

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

    g = new Generic(50, 50, 60, 60, color(255, 204, 0));
}

void draw(){
    /* To redraw the background, removing past draws */
    background(bg);

    g.move();
    g.draw();  
}