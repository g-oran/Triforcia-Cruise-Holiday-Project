trigger taskTrigger on Task (before insert){        
      for(Task t : Trigger.New){
          if(t.Subject == 'Emergency'){
             t.Priority = 'High';
             
             Set<String> recipientsIds = new Set<String>();
             recipientsIds.add('005IY000000LTYE');
             
             CustomNotificationFromApex.notifyUsers(recipientsIds, '000000000000000AAA');
              
          }
        
    }
    
}