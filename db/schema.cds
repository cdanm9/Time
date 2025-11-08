namespace my.timecapsule;
using {cuid,managed} from '@sap/cds/common';


entity Users:cuid,managed{
  email:String(200);
  settings:String(100);
  cloudEnabled:Boolean;
  subscriptionTier:String(100);
}

entity Capsules {
  key ID             : UUID;
      ownerId        : UUID;
      title          : String(200);
      description    : String(200);
      theme          : String(200);
      unlockAt       : Timestamp;
      isEmergency    : Boolean;
      storageMode    : String(200); // 'local' or 'cloud'
      status         : String(200); // 'locked' or 'unlocked'
      createdAt      : Timestamp;
      updatedAt      : Timestamp;
      ckEncrypted    : Boolean;
      to_attachments        : Composition of many Attachments on to_attachments.capsuleId = $self;
      to_schedules          : Composition of many DeviceSchedules on to_schedules.capsuleId = $self;
      to_notifications      : Composition of many NotificationLogs on to_notifications.capsuleId = $self;

}

entity Attachments:cuid {
      capsuleId      : Association to Capsules;
      type           : String(200); // 'text', 'image', 'audio', 'video'
      localPath      : String(200);
      cloudPath      : String(200);
      size           : Decimal(10,2);
      duration       : Decimal(5,2); // in seconds or minutes
      @Core.IsMediaType: true mimeType:String;
      @Core.MediaType:mimeType content:LargeBinary @Core.ContentDisposition.Filename: name;  
      name:String(200);
      url:String(2000);
}

entity DeviceSchedules:cuid {
      capsuleId      : Association to Capsules;
      nextTriggerAt  : Timestamp;
      platformToken  : String(200);
}

entity NotificationLogs :cuid{
      capsuleId      : Association to Capsules;
      channel        : String(200); // 'local', 'push', 'email'
      sentAt         : Timestamp;
      deliveryStatus : String(200);
}

entity Subscriptions :cuid{
      userId         : String(200);
      plan           : String(200);
      renewalAt      : Timestamp;
      store          : String(200); // 'Apple', 'Google'
      status         : String(200);
}