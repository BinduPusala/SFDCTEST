/*The trigger will prevent the user from deleting the accounts.This is because system administrator has all the permissions,we cannot change the permissions.
 * object:account
 * event:before
 * dml: delete*/
trigger AdminUser on Account (before delete) {
    for(Account a: trigger.old){
        a.addError('you donot have permission to delete the account,please contact system admin');
    }

}