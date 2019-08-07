require('json')
json = JSON.parse(open('./_data/sessions.json').read)
lines = [['時間', 'トラック', 'タイトル', '名前']]
lines << ['---', '---', '---', '---']
json.each do |session|
  speaker = session['name']
  if session['twitter'] != ""
    speaker = "[#{speaker}](https://twitter.com/#{session['twitter']})"
  end
  speaker += session['company'] == '' ? '' : " by #{session['company']}"
  track = session['track'] == '3' ? '' : session['track']
  title = session['speaker'] == '' ? session['title'] : "[#{session['title']}](https://devrel.tokyo/japan-2019/speakers/#{session['id']}/)"
  lines << [session['time'], track, title, speaker]
end

puts lines.map{|p| "|#{p.join('|')}|"}.join("\n")
