module.exports = (robot) ->
  robot.hear /^忍どころか$/i, (msg) ->
    randnum = Math.floor(Math.random() * 1000)
    if randnum < 70
      msg.send "パーリナイ！！！！"
    else if randnum < 90
      msg.send "暴れてやるぜ！"
    else
      msg.send "お布団入りたい\n\n＜⌒／ヽー､_＿\n／＜_/＿＿＿＿／\n￣￣￣￣￣￣￣"
