class Ellipse extends Shape {
    
    /* Constructor */
    public Ellipse(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }

    /* Methods */
    /* Setting the behavior of draw for Ellipse */
    @Override
    public void draw(){
        fill(super.cor);
        ellipse(super.x, super.y, super.largura, super.altura); 
    }
    
    @Override
    public boolean checkCollision(Shape shape){
        return false;
    }
}