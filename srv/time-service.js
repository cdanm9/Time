const cds=require('@sap/cds')

class TimeService extends cds.ApplicationService { init() {

  const { Capsules, Attachments, DeviceSchedules, NotificationLogs, Users, Subscriptions } = this.entities('TimeService')

  this.before (['CREATE', 'UPDATE'], Capsules, async (req) => {
    console.log('Before CREATE/UPDATE Capsules', req.data)
  })
  this.after ('READ', Capsules, async (capsules, req) => {
    console.log('After READ Capsules', capsules)
  })
  this.before (['CREATE'], Attachments, async (req) => {
    console.log('Before CREATE/UPDATE Attachments', req.data)
    console.log(JSON.stringify(req.data))
    req.data.url = `/odata/v4/time/Attachments(${req.data.ID})/content`
  })
  this.before (['UPDATE'], Attachments, async (req) => {
    console.log('Before UPDATE Attachments', req.data)
  })
  this.after ('READ', Attachments, async (attachments, req) => {
    console.log('After READ Attachments', attachments)
  })
  this.before (['CREATE', 'UPDATE'], DeviceSchedules, async (req) => {
    console.log('Before CREATE/UPDATE DeviceSchedules', req.data)
  })
  this.after ('READ', DeviceSchedules, async (deviceSchedules, req) => {
    console.log('After READ DeviceSchedules', deviceSchedules)
  })
  this.before (['CREATE', 'UPDATE'], NotificationLogs, async (req) => {
    console.log('Before CREATE/UPDATE NotificationLogs', req.data)
  })
  this.after ('READ', NotificationLogs, async (notificationLogs, req) => {
    console.log('After READ NotificationLogs', notificationLogs)
  })
  this.before (['CREATE', 'UPDATE'], Users, async (req) => {
    console.log('Before CREATE/UPDATE Users', req.data)
  })
  this.after ('READ', Users, async (users, req) => {
    console.log('After READ Users', users)
  })
  this.before (['CREATE', 'UPDATE'], Subscriptions, async (req) => {
    console.log('Before CREATE/UPDATE Subscriptions', req.data)
  })
  this.after ('READ', Subscriptions, async (subscriptions, req) => {
    console.log('After READ Subscriptions', subscriptions)
  })

  return super.init()
}}
