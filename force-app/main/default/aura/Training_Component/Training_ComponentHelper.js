({
	sumhelperMethod : function(component,event) {
		var varfirstNumber = component.find("FirstNumber").get("v.value");
         var varsecondNumber = component.find("SecondNumber").get("v.value");
        var action = component.get("c.getSum");
        action.setParams({a : varfirstNumber,
                          b : varsecondNumber});
        action.setCallback(this,function(response){
            if(response.getState() == "SUCCESS"){
                alert("Sum="+response.getReturnValue());
            }else if(response.getState() == "ERROR"){
                alert("Error is"+response.getError());
            }
        })
        $A.enqueueAction(action);
       // var varSum = parseInt(varfirstNumber) + parseInt(varsecondNumber);
       //alert("Sum="+varSum);
	},
    multihelperMethod : function(component,event) {
		var varfirstNumber = component.find("FirstNumber").get("v.value");
         var varsecondNumber = component.find("SecondNumber").get("v.value");
        
        var action = component.get("c.getMulti");
        action.setParams({a : varfirstNumber,
                          b : varsecondNumber});
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS'){
                alert("Multi="+response.getReturnValue());
            }else if(response.getState() == 'ERROR'){
                alert("Error is"+response.getError());
            }
        });
        $A.enqueueAction(action);
        
        //var varMulti = parseInt(varfirstNumber) * parseInt(varsecondNumber);
       // alert("Multi="+varMulti);
	},
    subhelperMethod : function(component,event) {
		var varfirstNumber = component.find("FirstNumber").get("v.value");
         var varsecondNumber = component.find("SecondNumber").get("v.value");
        
        var action = component.get("c.getSub");
        action.setParams({a : varfirstNumber,
                          b : varsecondNumber});
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS'){
                alert("Sub="+response.getReturnValue());
            }else if(response.getState() == 'ERROR'){
                alert("Error is"+response.getError());
            }
        });
        $A.enqueueAction(action);
        
        //var varSub = parseInt(varfirstNumber) - parseInt(varsecondNumber);
       // alert("Sub="+varSub);
	},
    divhelperMethod : function(component,event) {
		var varfirstNumber = component.find("FirstNumber").get("v.value");
         var varsecondNumber = component.find("SecondNumber").get("v.value");
        
        var action = component.get("c.getDiv");
        action.setParams({a : varfirstNumber,
                          b : varsecondNumber});
        action.setCallback(this,function(response){
            if(response.getState() == 'SUCCESS'){
                alert("Div="+response.getReturnValue());
            }else if(response.getState() == 'ERROR'){
                alert("Error is"+response.getError());
            }
        });
        $A.enqueueAction(action);
        
        //var varDiv = parseInt(varfirstNumber) / parseInt(varsecondNumber);
       // alert("Div="+varDiv);
	}
    
})