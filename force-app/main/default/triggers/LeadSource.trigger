/*Whenever lead is created with lead source as web then give rating cold otherwide hot
object: Lead
event: before
dml:insert
fields: lead source, rating
trigger.new ---all the new values in the form of list
logic: check the condition */
trigger LeadSource on Lead (before insert,before update) {
    for(Lead L: Trigger.New){
        if(L.LeadSource=='Web'){
            L.Rating='cold';
        }
        else{
                L.Rating='hot';
            
        }
    }

}