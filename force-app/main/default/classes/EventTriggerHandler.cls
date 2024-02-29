public class EventTriggerHandler {
    public static void setReminder(list<Event>EventList){
        for( Event updateEvent : EventList){
            if(updateEvent.ServiceAppointmentId != null){
            updateEvent.IsReminderSet = true;
            updateEvent.ReminderDateTime = updateEvent.StartDateTime.addMinutes(-15); 
            }
        }
    }
}