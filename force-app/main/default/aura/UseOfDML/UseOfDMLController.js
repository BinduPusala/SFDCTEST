({
	Add : function(component, event, helper) {
    
		var client = component.get("v.Client");
        if($A.util.isEmpty(client.Name) || $A.util.isUndefined(client.Name)){
            alert('Name should not be blank');
            return;
        }
        if($A.util.isEmpty(client.Client_Code__c) || $A.util.isUndefined(client.Client_Code__c)){
            alert('Client_Code should not be blank');
            return;
        }
        
        if($A.util.isEmpty(client.Project_Cost__c) || $A.util.isUndefined(client.Project_Cost__c)){
            alert('Project_Cost should not be blank');
            return;
        }        
        if($A.util.isEmpty(client.Name) || $A.util.isUndefined(client.Name)){
            alert('Name should not be blank');
            return;
        }
        helper.AddHelper(component,event);
        
    }
  
})