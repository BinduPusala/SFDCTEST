/*Whenever new account is created with annual revenue more than  50000 then add Anuska Shetty as contact name
Step1: object: Account
Step2: event : after
step3: dml :  insert 
step4: logic : check the revenue by using if condition*/
 trigger AccRevenue on Account (after insert,after update) {
    List<Contact> Cont = new List<Contact>();
     for(Account a : Trigger.New){
         if(a.AnnualRevenue>50000){
            Contact c = new Contact();
            c.FirstName = 'Anushka';
            c.LastName = 'Shetty';
            c.AccountId = a.id;
            cont.add(c);
             System.debug('Contact Name:'+cont);
        
    }
     }
    
    insert cont;
     update cont;
     

}