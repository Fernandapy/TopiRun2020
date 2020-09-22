public  class EventPremiumCategory {

    public static String EventDescription = 'Apresentar o portifólio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
    public static String EventCategory = 'Premium';
    public static String EventSubject = 'Apresentação instucional dos produtos Premium';

}

public class EventPremiumCategoryHandler {
    public static void TriggerAfter(List <Account> Accounts){
        List<Event> Events = new List<Event>();
        for(Account newAccount : Accounts){
            if(newAccount.categoria__c == EventPremiumCategory.EventCategory && newAccount.AnnualRevenue > 1000000){
                Event newEvent = new Event(); 
                newEvent.description = EventPremiumCategory.EventDescription;
                newEvent.Subject = EventPremiumCategory.EventSubject;
                newEvent.WhatId= newAccount.id;
                newEvent.StartDateTime = System.now();
                newEvent.EndDateTime = System.now().addHours(1);            
                newEvent.ContactType__c = 'Telefônico';
                Events.add(newEvent);
            }
        }
}