cronJob = require('cron').CronJob

module.exports = (robot) ->
  cron = new cronJob('*/1 * * * *', () =>
    envelope = room: "#free-room"
    robot.send envelope, "ラブサーモン！"
  )
  cron.start()
