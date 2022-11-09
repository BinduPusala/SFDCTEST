public class statvariable {
    public static integer count = 10;
    private integer instancecount = 20;
    
    public void setInstancecount(Integer v){
       
         instancecount = v;
       
    }
    public void setcount(Integer v){
                count = v;
           }
    public void setvalue(){
        system.debug('value of setcount'+count);
        system.debug('value of instancecount'+instancecount);
    }
    

}