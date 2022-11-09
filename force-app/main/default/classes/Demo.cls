public virtual class Demo {
    private String name;
    private integer Age;
    Public Demo(String s, Integer n){
        name=s;
        Age=n;
    }
    public Demo(){
        name='Ram';
        Age=22;
    }
    public void show(){
        System.debug('Enter the name:'+name);
        System.debug('Enter the age:'+Age);
         }       
    }