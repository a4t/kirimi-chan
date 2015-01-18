module.exports = (robot) ->
  robot.hear /^肉$/i, (msg) ->
    msg.send "こくさんのおにく"
