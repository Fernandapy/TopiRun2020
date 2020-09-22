public virtual class AccountClient {

    virtual
    public List<Account> findByName ( String name ) {

        return [ SELECT Id, Name, StartDate__c, EndDate__c, ContactType__c 
            FROM Account 
            WHERE Name like :name ];

    }

    virtual
    public List<Account> findWithContactsByName ( String name ) {

        return [ SELECT Id, Name, StartDate__c, EndDate__c FROM Agendamento__c
            , ( SELECT Id, LastName FROM Agendamento__c )
            FROM Account 
            WHERE Name like :name ];

    }


    virtual
    public List<Account> create (List<Account> accounts) {
        insert accounts;
        return accounts;
    }

    virtual
    public List<Account> store (List<Account> accounts) {
        update accounts;
        return accounts;
    }
    
}