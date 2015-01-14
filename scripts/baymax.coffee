module.exports = (robot) ->
  robot.hear /ぬーまっくす/i, (msg) ->
    msg.send "ぬーぬーぬー"

  robot.hear /べいまっくす/i, (msg) ->
    msg.send "ばらららららららら"

  robot.hear /ねぎまっくす/i, (msg) ->
    msg.send "ねぎー　　　　　　　　　まっ"

  robot.hear /:baymax:$/i, (msg) ->
    msg.send "私の名はベイマックス。あなたの心と身体を守ります"

  robot.hear /[痛い|いたい|イタイ]/i, (msg) ->
    msg.send "https://files.slack.com/files-pri/T02FRV4VD-F03C0TLCK/bc407fb137503804e295313d72564b44-e1417095060662.jpg"
