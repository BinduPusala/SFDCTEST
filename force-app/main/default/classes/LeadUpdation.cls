public class LeadUpdation {
    String FirstName;
    public  void PrefixInsert(){
        List<Lead> LED = new List<Lead>();
        for(Lead a : LED){
            a.FirstName= 'Dr'+FirstName;
                 }
      //insert LED;
    }
    public void PrefixUpdate(){
        List<Lead> LED = new List<Lead>();
        for(Lead a : LED){
            if(FirstName!= null){
                a.FirstName= 'Dr'+FirstName;
            }

}
      //  Update LED;
    }
}