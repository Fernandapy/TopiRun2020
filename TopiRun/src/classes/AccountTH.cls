/**
 *@author fernandalima - topirun2020
 */

public virtual with sharing class AccountTH extends TriggerHandler {

   List<Account> newAccounts;
   
   Map<Id,Account> oldAccounts;

   AccountFilter filter;

   AccountValidator validator;

   public AccountTH () {
       this ( (List<Account>) Trigger.new, (Map<Id,Account>) Trigger.oldMap );
   }

   public AccountTH (List<Account> newAccounts , Map<Id,Account> oldAccounts) {
       
       this.newAccounts = newAccounts;
       this.oldAccounts = oldAccounts;

       this.filter = new AccountFilter();
       this.validator = new AccountValidator();
   
   }

   override
   public void beforeInsert() {
       validateDocumentNumber ();
   }
   
   
   override
   public void beforeUpdate() {
       validateDocumentNumber ();
   }

   virtual
   public void validateDocumentNumber () {

       List<Account> filterdAccounts = this.filter.filterByChangedDocumentNumber(newAccounts
                                                                                 , oldAccounts);
       this.validator.validateDocumentNumber(filterdAccounts);

   }


}