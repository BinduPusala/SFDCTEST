public class CalculatorController {
    
    @AuraEnabled
    public static Integer getSum(integer a, integer b){
        return a+b;
    }
    
    @AuraEnabled
    public static Integer getMulti(integer a, integer b){
        return A*b;
    }
    @AuraEnabled
    public static Integer getSub(integer a, integer b){
        return A-b;
    }
    @AuraEnabled
    public static Integer getDiv(integer a, integer b){
        return a/b;
    }
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
    @AuraEnabled
public static Boolean updateAccount(Account a){
    Boolean flag = false;
    try{
      List<Account> lstAccount = [Select id,Name from account where Client_Code__c =:a.Client_Code__c] ;
      lstAccount[0].Project_Cost__c = a.Project_Cost__c;
      lstAccount[0].Employee_Count__c = a.Employee_Count__c;
      update lstAccount;
      flag = true;
      
    }catch(exception e){
        system.debug('Error'+e.getMessage());
        flag = false;
    }
    return flag;
    
}

}