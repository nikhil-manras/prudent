@isTest
public class EventTriggerHandlerTestClass {
    @isTest
    public static void Testmethod1(){
        lead LeadInsert = new Lead();
        LeadInsert.LastName = 'test';
        LeadInsert.Company = 'test';
        LeadInsert.Status = 'New';
        insert LeadInsert;
        
        event EventInsert = new Event();
        EventInsert.Subject = 'test';
        EventInsert.WhoId =LeadInsert.Id;
        
    }
    
}