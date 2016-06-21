class Generic extends Shape {

    private float largura;
    private float altura;

    /* Constructores */
    public Generic(float largura, float altura, float x, float y, color cor){
        super(x, y, cor);

        this.largura = largura;
        this.altura = altura;
    }

    /* Methods */
    @Override
    public void move(){
    
    }

    @Override
    public void draw(){
        fill(super.cor);
        rect(super.x, super.y, this.largura, this.altura);
    }

    /* Getters and Setters */
    public float getLargura(){
        return this.largura; 
    }

    public void setLargura(float largura){
        this.largura = largura; 
    }

    public float getAltura(){
        return this.altura; 
    }

    public void setAltura(float altura){
        this.altura = altura; 
    }
}