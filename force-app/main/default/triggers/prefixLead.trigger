/* Prefix first name with Dr when new lead is created or updated
   Step 1 : Which Object: Lead
   Step 2 : Which Event : before
   Step 3 : Which DML :  inset, Update */

 trigger prefixLead on Lead (before insert,before update) {
     
     for(Lead l : Trigger.New){
         System.debug('Tringger new list before insert' +Trigger.New);
         l.FirstName = ' Dr ' + l.FirstName;
         System.debug('Tringger new list before Update' +Trigger.New);
     }

}