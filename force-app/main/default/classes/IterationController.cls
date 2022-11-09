public class IterationController {
    @AuraEnabled
    public static Map<string,List<String>> getMap(){
       Map<string,List<String>> mapOfData = new Map<string,List<String>>();
       list<String> lstMobiles = new list<String>();
        lstMobiles.add('Nokia');
        lstMobiles.add('Apple');
        lstMobiles.add('Samsung');
        
       mapOfData.put('Mobile', lstMobiles) ;
        list<String> lstCars = new List<String>();
        lstCars.add('Maruti');
        lstCars.add('Ford');
        lstCars.add('BMW');
         lstCars.add('Audi');
        
        mapOfData.put('Car', lstCars) ;
        return mapOfData;
       
        
    }

}