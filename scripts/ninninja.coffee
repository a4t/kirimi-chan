module.exports = (robot) ->
  robot.hear /^忍どころか$/i, (msg) ->
    randnum = Math.floor(Math.random() * 100)
    if randnum < 60
      msg.send "パーリナイ！！！！"
    else if randnum < 70
      msg.send "追跡！撲滅！いずれもマッハ！"
    else if randnum < 75
      msg.send "はずれ…☆"
    else if randnum < 90
      msg.send "暴れてやるぜ！"
    else
      msg.send "お布団入りたい\n\n　＜⌒／ヽー､_＿\n／＜_/＿＿＿＿／\n￣￣￣￣￣￣￣"
