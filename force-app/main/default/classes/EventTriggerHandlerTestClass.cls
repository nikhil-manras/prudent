@isTest
public class EventTriggerHandlerTestClass {
    @isTest
    public static void Testmethod1(){
        lead LeadInsert = new Lead();
        LeadInsert.LastName = 'test';
        LeadInsert.Company = 'test';
        LeadInsert.Status = 'New';
        insert LeadInsert;
        
        DateTime myDateTime = DateTime.newInstance(2023, 8, 21, 14, 30, 0);

        event EventInsert = new Event();
        EventInsert.Subject = 'test';
        EventInsert.WhoId =LeadInsert.Id;
        EventInsert.DurationInMinutes = 15;
        EventInsert.ActivityDateTime  = myDateTime;
        insert EventInsert;
    }
    
}