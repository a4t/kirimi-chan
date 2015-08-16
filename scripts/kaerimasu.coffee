module.exports = (robot) ->
  robot.hear /^帰ります/i, (msg) ->
    date = new Date()
    date.setMinutes(date.getMinutes() + 70)

    hour = ("0"+date.getHours()).slice(-2)
    minute = ("0"+date.getMinutes()).slice(-2)

    msg.send "予定帰宅時刻は #{hour}:#{minute} だしゃけー"
    setTimeout (-> 
      msg.send "そろそろ帰宅するかもしゃけー" 
    ), (1000 * 60 * 60)
