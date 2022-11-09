/*prevent account from deleting,if it has 2 or more contacts
object: account
event: before
dml: delete
steps to follow(logic)
step1:get account ids
step2:get contact based on account ids
step3:check no of contact greater or equal to 2 or more then throw an error*/
trigger DeleteAcc on Account (before delete) {
    set<id> accidset = new set<id>(); //unique id
    Map<id,Account>accmap = new Map<id,Account>();
    for(Account a: Trigger.old){
        accidset.add(a.id);
    }
    for(Account a: [select id,name,(select id, firstName, LastName from Contacts) from account where id in:accidset]){
        accmap.put(a.id,a);
    }
    for(Account a1: Trigger.old){
        if(accmap.get(a1.id).Contacts.size()>=2){
            a1.adderror('Account Delete not posssible if contact>=2');
        }
    }

}