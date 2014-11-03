module.exports = (robot) ->
  robot.respond /shell command/i, (msg) ->
    @exec = require('child_process').exec
    command = "ls -la /"

    msg.emote "shellコマンド実行しちゃうよ！"

    @exec command, (error, stdout, stderr) ->
      msg.send error
      msg.send stdout
      msg.send stderr
