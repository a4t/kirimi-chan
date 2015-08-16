module.exports = (robot) ->
  robot.hear /^忍どころか$/i, (msg) ->
      msg.send "パーリナイ！！！！"
