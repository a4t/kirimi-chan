# Description:
#   DOCOMOの雑談APIを利用した雑談
#
# Author:
#   FromAtom

getTimeDiffAsMinutes = (old_msec) ->
  now = new Date()
  old = new Date(old_msec)
  diff_msec = now.getTime() - old.getTime()
  diff_minutes = parseInt( diff_msec / (60*1000), 10 )
  return diff_minutes

module.exports = (robot) ->
  robot.respond /(\S+)/i, (msg) ->
    DOCOMO_API_KEY = process.env.DOCOMO_API_KEY
    message = msg.match[1]
    return unless DOCOMO_API_KEY && message

    ## ContextIDを読み込む
    length = 8
    context_code = Math.random().toString(36).slice(-length);
    KEY_DOCOMO_CONTEXT = 'docomo-talk-context-' + context_code
    context = robot.brain.get KEY_DOCOMO_CONTEXT || ''

    url = 'https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue?APIKEY=' + DOCOMO_API_KEY
    user_name = msg.message.user.name

    request = require('request');
    request.post
      url: url
      json:
        utt: message
        nickname: user_name if user_name
        context: context if context
      , (err, response, body) ->
        ## ContextIDの保存
        robot.brain.set KEY_DOCOMO_CONTEXT, body.context

        gobi = ["しゃけー", "しゃけしゃけ", "しゃけけけけー", "…"]
        gobi_num = Math.floor Math.random() * 4

        msg.send body.utt + gobi[gobi_num]

