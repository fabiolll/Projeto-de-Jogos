Generic g;

void setup(){
    size(1280, 720);
    background(loadImage("space-bck.png"));
    g = new Generic(50, 50, 60, 60, color(255, 204, 0));
}

void draw(){
    g.draw();  
}
