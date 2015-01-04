module.exports = (robot) ->
  robot.hear /さば/i, (msg) ->
    msg.send "寿司"

module.exports = (robot) ->
  robot.hear /にこ/i, (msg) ->
    msg.send "ごり"

module.exports = (robot) ->
  robot.hear /えび/i, (msg) ->
    msg.send "🍤"