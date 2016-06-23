class Rectangle extends Shape {
  
    /* Constructors */
    public Rectangle(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }
    
    /* Methods */
    @Override
    public boolean checkCollision(Shape shape){
        return this.isInside(shape.getVertices());
    }
    
    @Override
    public ArrayList<Point> getVertices(){
        ArrayList<Point> points = new ArrayList<Point>();
        
        Point p1 = new Point(super.x - (super.largura / 2), super.y - (super.altura / 2));
        Point p2 = new Point(super.x + (super.largura / 2), super.y - (super.altura / 2));
        Point p3 = new Point(super.x - (super.largura / 2), super.y + (super.altura / 2));
        Point p4 = new Point(super.x + (super.largura / 2), super.y + (super.altura / 2));
        
        points.add(p1);
        points.add(p2);
        points.add(p3);
        points.add(p4);
        
        return points;
    }
    
    @Override
    public boolean isInside(ArrayList<Point> points){
        for (Point p : points){
             if(p.getX() >= super.x - (super.largura / 2) && p.getX() <= super.x + (super.largura / 2) && 
             p.getY() <= super.y + (super.altura / 2) && p.getY() >= super.y - (super.altura / 2)){
                 return true;
             }
        }
        
        return false;
    }
    
    /* Setting the behavior of draw for Rectangle */
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