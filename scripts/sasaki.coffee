module.exports = (robot) ->
  robot.hear /あーりんだよぉ～$/i, (msg) ->
    msg.send "佐々木さん、何言ってるんですか？"
