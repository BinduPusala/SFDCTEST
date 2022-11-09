public virtual class TestObject { //default constructor
   
    Private String sname;
     {
        sname ='default';
          system.debug('vname :' +sname); 
          
    }
    //static block
    static {
        
          system.debug('static block'); 
          
    }
    
    //no argument constructor
    public  TestObject(){
        sname = 'Hima';
        system.debug('sname :' +sname);  
      
    }
    
    //argument constructor or //overloaded constructor: same class & diff arguments
     public TestObject(String sname){      
         system.debug('vname :' +sname); 
     }
    public TestObject(String sname,Integer No){      
         system.debug('vname :'+sname); 
          system.debug('vno :'+No); 
     }
     public virtual Integer Number(Integer No){       
          system.debug('vno :'+No); 
         return No;
     }

}