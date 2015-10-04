module.exports = (robot) ->
  robot.hear /.*/i, (msg) ->
    randnum = Math.floor(Math.random() * 300)
    if randnum == 1
      msg.send "http://www.tv-asahi.co.jp/reading/drive/wp-content/uploads/sites/281/2015/07/415_0092-300x190.jpg"
