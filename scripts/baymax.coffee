module.exports = (robot) ->
  robot.hear /ぬーまっくす/i, (msg) ->
    msg.send "ぬーぬーぬー"

  robot.hear /べいまっくす/i, (msg) ->
      msg.send "ばらららららららら"

  robot.hear /ねぎまっくす/i, (msg) ->
        msg.send "ねぎー　　　　　　　　　まっ"
