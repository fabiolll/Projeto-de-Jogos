abstract class Shape {

    private float x, y;
    private color cor;

    /* Constructors */
    public Shape(float x, float y, color cor){
        this.x = x;
        this.y = y;
        this.cor = cor;
    }

    /* Methods */
    public void move(){
    
    }

    public void draw(){
    
    }

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
}
