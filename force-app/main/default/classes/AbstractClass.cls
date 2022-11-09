public abstract class AbstractClass {
    protected Double amount = 10;
    
    private void updateNew(){
        system.debug('make some callouts,Update the calculated price');
    }
    
    abstract protected void calculateprice(Integer count);
    
    public void purchase(Integer count){
        updateNew();
        calculateprice(count);
        
    }

}