class Generic extends Shape {
  
    /* Constructors */
    public Generic(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }
    
    /* Methods */
    /* Setting the behavior of draw for Generic */
    @Override
    public void draw(){
        fill(super.cor);
        rect(super.x, super.y, super.largura, super.altura);
    }
}
