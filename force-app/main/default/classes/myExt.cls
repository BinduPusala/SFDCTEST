public class myExt {
	public final Account acc;
    public myExt(Apexpages.StandardController stdCont){
        this.acc = (Account)stdCont.getRecord();
    }
    public String getgreeting(){
        if(acc.Name != null && acc.Name != ''){
            return 'Hello'+' '+acc.Name;
        }
        return '';
    }
}