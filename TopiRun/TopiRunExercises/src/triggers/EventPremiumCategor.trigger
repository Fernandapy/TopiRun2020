trigger EventPremiumCategor on EventCategoryPremium (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
  if(trigger.isAfter){
        EventCategoryPremium.TriggerAfter(Trigger.new);
    }
}  
}