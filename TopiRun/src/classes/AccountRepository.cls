/**
*@author fernandalima - topirun2020
*/
public virtual class AccountRepository {

    // crud
    virtual
    public List<Account> findByName ( String name){

         return [SELECT Id, Name, Type, BillingCitu, BillingState
              , BillingPostalCode, BillingCountry, CreatedDate, CreatedBy.Name
              , (SELECT Id, FirstName, LastName FROM Contacts)
              FROM Account
              WHERE Name like :name];
    }
    virtual 
    public List<Account> findWithContactsByName ( String name){

        return [SELECT Id, Name, Type, BillingCitu, BillingState
            , BillingPostalCode, BillingCountry, CreatedDate, CreatedBy.Name
            , (SELECT Id, FirstName, LastName FROM Contacts)
            FROM Account
            WHERE Name like :name];
}