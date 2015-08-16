module.exports = (robot) ->
  robot.respond /norikae\s(.*)\s\->\s([^\s]*)($|\s([0-9]{2}:[0-9]{2})$)/i, (msg) ->
    from = encodeURIComponent msg.match[1]
    to   = encodeURIComponent msg.match[2]

    date = new Date();
    year = date.getUTCFullYear()
    month = ("0"+(date.getMonth() + 1)).slice(-2)
    day = ("0"+date.getDate()).slice(-2)

    if msg.match[4] != undefined
      setting_time = msg.match[4]

      hour = setting_time.substr 0, 2
      minute1 = setting_time.substr 3, 1
      minute2 = setting_time.substr 4, 1
    else
      hour = ("0"+date.getHours()).slice(-2)
      minute1 = ("0"+date.getMinutes()).slice(-2).substr 0, 1
      minute2 = ("0"+date.getMinutes()).slice(-2).substr 1, 1
    url = "http://transit.yahoo.co.jp/search/result?flatlon=&from=#{from}&tlatlon=&to=#{to}&via=&via=&via=&y=#{year}&m=#{month}&d=#{day}&hh=#{hour}&m2=#{minute2}&m1=#{minute1}&type=1&ticket=ic&al=1&shin=1&ex=1&hb=1&lb=1&sr=1&s=0&expkind=1&ws=2&"

    view_date = "#{month}月#{day}日 #{hour}:#{minute1}#{minute2}" 
    msg.send "#{msg.match[1]} -> #{msg.match[2]} #{view_date} のルートです。\n#{url}" 
