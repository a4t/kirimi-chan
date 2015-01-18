module.exports = (robot) ->
  robot.hear /^さーさき！$/i, (msg) ->
    msg.send "おい！"

  robot.hear /(あーりん|あ～りん|アーリン|佐々木)/i, (msg) ->
    msg.send "あーりんだよぉ～☆"
