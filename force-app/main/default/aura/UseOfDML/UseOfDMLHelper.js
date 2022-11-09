({
	AddHelper : function(component,event) {
		var action = component.get('c.insertAccount');
        action.setParams({a : component.get("v.Client")});
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS'){
                alert('Record inserted Successfully');
            }else{
                alert('Error while inserting record');
            }
        });
        
        $A.enqueueAction(action);
	}
})