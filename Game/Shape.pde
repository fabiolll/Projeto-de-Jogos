abstract class Shape {

    private float x, y;
    private float largura, altura;
    private color cor;

    /* Constructors */
    public Shape(float largura, float altura, float x, float y, color cor){
        this.largura = largura;
        this.altura = altura;
        this.x = x;
        this.y = y;
        this.cor = cor;
    }

    /* Methods */
    public void move(){
        this.y += 3;    
    }

    /* All subclasses must override draw */
    public abstract void draw();

    /* All subclasses must override check collision */
    public abstract boolean checkCollision(Shape shape);

    /*public String toString(){
        return null;    
    }*/

    /* Getters and setters */
    public float getX(){
        return this.x;
    }

    public void setX(float x){
        this.x = x; 
    }

    public float getY(){
        return this.y; 
    }

    public void setY(float y){
        this.y = y; 
    }

    public color getCor(){
        return this.cor;  
    }

    public void setCor(color cor){
        this.cor = cor; 
    }

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
