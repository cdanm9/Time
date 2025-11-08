using my.timecapsule as db from '../db/schema';

service TimeService {
    @odata.draft.enabled
    entity Capsules         as projection on db.Capsules;
    entity Users         as projection on db.Users;
    entity Attachments      as projection on db.Attachments;
    entity DeviceSchedules  as projection on db.DeviceSchedules;
    entity NotificationLogs as projection on db.NotificationLogs;
    entity Subscriptions    as projection on db.Subscriptions;

}
