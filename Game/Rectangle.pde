class Rectangle extends Shape {
  
    /* Constructors */
    public Rectangle(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }
    
    /* Methods */
    /* Setting the behavior of draw for Generic */
    @Override
    public void draw(){
        fill(super.cor);

        /*
         * Centralizing the (x,y) point to keep the pattern with ellipse and triangle 
         */
        rect(
            super.x - (super.largura / 2),
            super.y - (super.altura / 2),
            super.largura,
            super.altura
        );
    }
}
