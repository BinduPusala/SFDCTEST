({
	callMe : function(component, event, helper) {
        var varFirstName = 	component.find("FirstName").get("v.value");	
        var varLastName = 	component.find("LastName").get("v.value");	
        var varGender = 	component.find("Gender").get("v.value");	
        
        if(varGender == 'M' || varGender =='m'){
            alert('Full Name='+'Mr.'+varFirstName+' '+varLastName);
        }else{
            alert('Full Name='+'Ms.'+varFirstName+' '+varLastName);
        }
        

		
	}
})