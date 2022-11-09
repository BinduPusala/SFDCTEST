public class CalculationController {
    @AuraEnabled
public static Boolean insertAccount(Account a){
    Boolean flag = false;
    try{
      insert a;  
      flag = true;
    }catch(exception e){
        system.debug('Error'+e.getMessage());
        flag = false;
    }
    return flag;
    
}
   
}