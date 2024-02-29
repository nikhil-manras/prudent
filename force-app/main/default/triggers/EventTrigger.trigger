trigger EventTrigger on Event (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        EventTriggerHandler.setReminder(trigger.new);      
    }
}