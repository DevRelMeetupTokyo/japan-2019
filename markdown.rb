require('json')
json = JSON.parse(open('./_data/sessions.json').read)
panelists = JSON.parse(open('./_data/panelers.json').read)
lts = JSON.parse(open('./_data/lts.json').read)
lines = [['時間', 'トラック', 'タイトル', '名前']]
lines << ['---', '---', '---', '---']
json.each do |session|
  speaker = session['name']
  if session['twitter'] != ""
    speaker = "[#{speaker}](https://twitter.com/#{session['twitter']})"
  end
  speaker += session['company'] == '' ? '' : "@#{session['company']}"
  track = session['track'] == '3' ? '' : session['track']
  title = session['speaker'] == '' ? session['title'] : "[#{session['title']}](https://devrel.tokyo/japan-2019/speakers/#{session['id']}/)"
  if session['panel'] == 'true'
    speaker = 'モデラー：' + speaker + '<br />パネリスト：<br />' + panelists.map{|p| "#{p['name']}@#{p['company']}" }.join('<br />')
  end
  if session['lt'] == 'true'
    speaker = lts.map{|p|
      if p['twitter'] != ''
        speaker = "[#{p['name']}](https://twitter.com/#{p['twitter']})"
      else
        speaker = p['name']
      end
      speaker += p['company'] == '' ? '' : "@#{p['company']}"
      speaker
    }.join('<br />')
  end
  lines << [session['time'], track, title, speaker]
end

puts lines.map{|p| "|#{p.join('|')}|"}.join("\n")
