/*Whenever phone field is updated in account then the name field should also updated in account
  Step1: Which object: Account
  Step 2: Which Event: Before
  Step 3: Which DML :  Update
  Step 4: Logic  : Check when the Phone number is changed then name should be changed with phone number*/

   trigger UpdAcc on Account (before update) {
       
       for(Account acc: Trigger.New){
           if(acc.Phone != Trigger.oldMap.get(acc.Id).Phone)   
               system.debug('Trigger point'+ Trigger.New);
           acc.Name = acc.Name + acc.Phone;
           
       }
       

}