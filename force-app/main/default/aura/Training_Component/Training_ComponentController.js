({
	callMe : function(component, event, helper) {
		var varFirstName = 	component.find("FirstName").get("v.value");	
        var varLastName = 	component.find("LastName").get("v.value");	
        var varGender = 	component.find("Gender").get("v.value");	
        
        if(varGender == 'M' || varGender =='m'){
            alert('Full Name='+'Mr.'+varFirstName+' '+varLastName);
        }else{
            alert('Full Name='+'Ms.'+varFirstName+' '+varLastName)
        }
        

	},
    onchangeGender: function(component, event, helper) {
        var varshoeButton=component.get("v.ShowButton");
        component.set("v.ShowButton",true);
    },
    sumMethod : function(component, event, helper) {
        helper.sumhelperMethod(component, event);
    },
    multiMethod : function(component, event, helper) {
        helper.multihelperMethod(component, event);
    },
    subMethod : function(component, event, helper) {
        helper.subhelperMethod(component, event);
    },
    divMethod : function(component, event, helper) {
        helper.divhelperMethod(component, event);
    }
    
})