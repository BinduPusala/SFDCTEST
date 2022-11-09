trigger PrefixTrigger on Lead (before insert, before Update) {
    LeadUpdation  ld = new LeadUpdation();
}