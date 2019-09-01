require('json')
json = JSON.parse(open('./_data/sessions.json').read)
JSON.parse(open('./_data/lts.json').read).each do |l|
  json << l
end

json.each do |session|
  next unless session['speaker'] == 'true'
  content = <<-EOS
---
layout: speaker
permalink: /speakers/#{session['id']}/
id: #{session['id']}
speaker: #{session['name']}#{session['company'] == '' ? '' : "（#{session['company']}）"}
---
  EOS
  f = open("./speakers/#{session['id']}.md", 'w')
  f.write(content)
  f.close
end