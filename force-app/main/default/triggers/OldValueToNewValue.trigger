/* whenever account phone is modified then update contact record with phone field(otherwise with oldvalue and homephone with new value)
 *  associated with account records.
 * object:account
 * events:after
 * dml:update
 * Compare old value to new value
 * Step1:store set of account ids where account phone number is not equal to old phone
 * Fetch account wheree are updating the phone
 * Step 2:Fetch contacts with the above account ids
 * step3 : iterate over accounts n contacts and update contact field
 * contact home phone with new value
 * contact otherphone with oldvalue */
 trigger OldValueToNewValue on Account (before insert) {
     set<id> accid=new set<id>();
     for(account a :  trigger.new){
         accid.add(a.id);
     
     }
     List<contact> contactlist=[select id,otherphone,homephone from contact where accountid in: accid];
     List<contact>Updatedcontactlist =new List<contact>();
     system.debug('contactlist'+ Updatedcontactlist);
     for(Account ac: trigger.new){
         if(!contactlist.isEmpty()){
             for(contact c: contactlist){
                 c.otherphone = ac.phone;
                 c.homephone = ac.phone;
                 Updatedcontactlist.add(c);
                 system.debug('contact'+Updatedcontactlist);
             }
             
         }
     }
     
update Updatedcontactlist;
}