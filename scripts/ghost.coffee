module.exports = (robot) ->
  robot.hear /変身/i, (msg) ->
    randnum = Math.floor(Math.random() * 100)
    if randnum < 30
      msg.send "ﾊﾞｯﾁﾘﾐﾅｰ"
    else if randnum < 70
      msg.send "ﾊﾞｯﾁﾘﾐﾅｰ、ﾊﾞｯﾁﾘﾐﾅｰ"
    else if randnum < 90
      msg.send "開眼！俺！"
    else
      msg.send "レッツゴー！覚悟！ゴ・ゴ・ゴ！ゴースト！"