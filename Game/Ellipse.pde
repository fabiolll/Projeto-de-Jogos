class Ellipse extends Shape {
  
    private float radius;
    
    /* Constructor */
    public Ellipse(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
         
         this.radius = super.largura / 2;
    }

    /* Methods */
    @Override
    public ArrayList<Point> getVertices(){
        ArrayList<Point> points = new ArrayList<Point>();
        
        return points;
    }
    
    @Override
    public boolean isInside(ArrayList<Point> points){
        for(Point p : points){
            float distance = dist(p.getX(), p.getY(), super.x, super.y);
            if(distance <= this.radius){
                return true;
            }
        }
        
        return false;
    }
    
    /* Setting the behavior of draw for Ellipse */
    @Override
    public void draw(){
        fill(super.cor);
        ellipse(super.x, super.y, super.largura, super.altura); 
    }
    
    @Override
    public boolean checkCollision(Shape shape){
        return this.isInside(shape.getVertices());
    }
}