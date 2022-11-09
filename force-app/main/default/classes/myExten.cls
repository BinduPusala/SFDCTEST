public class myExten {
    public final Account acc;
    public myExten(Apexpages.StandardController stdCont){
        this.acc = (Account)stdCont.getRecord();
    }
    public String getgreeting(){
        if(acc.Name != null && acc.Name != ''){
            return 'Hello'+' '+acc.Name;
            
        }
        return '';
    }

}