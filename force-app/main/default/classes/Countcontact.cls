/* count number of contacts on accounts using trigger following best practices
 * object: contact(trigger action performing on contact)
 * event : after(Based on A do something on B)
 * dml : insert/update/delete/undelete
 * step1: Get account ids from new contacts n old contact and store in the set.
 * step2 : query all accounts from above set with contacts.
 * step3: Update the number of contacts in the custom field.*/
 public class Countcontact {
     public void countcontacts(List<contact> newcontacts,List<contact> oldcontacts){
         set<Id> accids=new set<Id>();
         try{
             if(newcontacts!=null){
                 for(contact c :newcontacts){
                     if(c.AccountId!= null){
                         accids.add(c.accountid); 
                     } 
                 }  
             }if(oldcontacts != null){
                 for(contact c : oldcontacts){
                         accids.add(c.accountid);
                     }
                 }List<Account> acc=[select id,count_contact__c,(Select id from contacts)from account where id IN:accids];
               if(acc!=null){
                 for(Account accValue:acc){
                     accValue.count_contact__c=accValue.Contacts.size();
                 }
             }if(!acc.isEmpty()){
                 Update acc;
             }
         }catch(exception e){
             system.debug('Get message'+e.getMessage());
         }
         }
        
     }