public class Imp Implements InterfaceClass{
    
    public Double calculateprice(Integer count,Double priceperunit){
        Double val = count * priceperunit;
        system.debug('value'+val);
        return val;
        
    }

}