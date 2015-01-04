module.exports = (robot) ->
  robot.hear /さば/i, (msg) ->
    msg.send "寿司"

  robot.hear /にこ/i, (msg) ->
    msg.send "ごり"

  robot.hear /えび/i, (msg) ->
    msg.send "🍤"