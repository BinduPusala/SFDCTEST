//When Account is created then contact should be created
trigger AcctwithCont on Account (after insert) {
    List<Contact> cntlist= new  List<Contact>();
    for(Account a: Trigger.New){
        system.debug('Any Trigger point'+ Trigger.New);
        Contact c = new Contact();
        c.accountid = a.id;
        c.LastName=a.Name;
        cntlist.add(c);   
    }
 insert(cntlist);
}