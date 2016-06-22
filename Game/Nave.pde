class Nave extends Shape {
    
    /* Constructor */
    public Nave(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }
  
    /* Methods */
    @Override
    public void draw(){

    }
    
    @Override
    public boolean checkCollision(Shape shape){
        return false;
    }
}