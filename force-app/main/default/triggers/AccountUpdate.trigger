/*write a trigger to update a field (city) in opportunity when same field(city) is updated in account
step1 : object:Account
Step2 : event : after
Step3 : dml  : update
logic :create a city field in opp n account,then check the fields,add the id, create a opp list n update the city*/

trigger AccountUpdate on Account (after update) {
    set<Id> AccountId = new set<Id>();
    for(Account a : Trigger.New)
    {
        System.debug('Trigger point is' + Trigger.New );
        if(a.City__c != Trigger.oldMap.get(a.id).City__c)
             System.debug('Trigger City__c' + a.City__c );
            AccountId.add(a.id);
        System.debug('Account City__c' + AccountId );
    }
    List<Opportunity> oppt=[select id,City__c,AccountId from Opportunity where accountid in : AccountId];
    System.debug('Opportunity list' +oppt );
    for(opportunity opp: oppt){
        opp.City__c = Trigger.newMap.get(opp.accountid).City__c;
        System.debug('Opportunity City' +opp.City__c );
        
    }
    update oppt;
    
}