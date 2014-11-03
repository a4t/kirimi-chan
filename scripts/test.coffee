cronJob = require('cron').CronJob

module.exports = (robot) ->
  cron = new cronJob('*/1 * * * *', () =>
    date = new Date()

    year = date.getFullYear()
    month = date.getMonth() + 1
    week_num = date.getDay()
    day = date.getDate()
    hour = date.getHours()
    minute = date.getMinutes()
    second = date.getSeconds()

    week = new Array("日", "月", "火", "水", "木", "金", "土")
    date_text = "西暦" + year + "年" + month + "月" + day + "日 " + hour + "時" + minute + "分" + second + "秒" + week[week_num] + "曜日"

    envelope = room: "#free-room"
    robot.send envelope, "ラブサーモン！ @ " + date_text
  )
  cron.start()
