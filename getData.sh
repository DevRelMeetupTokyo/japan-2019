#!/bin/bash
curl -L "https://script.google.com/macros/s/AKfycbzayrErQKZ_tEom33d4FeY0hKHNEkji-BUs6BhS3hzBZXcdkTCU/exec?name=organizers" -o _data/organizers.json
curl -L "https://script.google.com/macros/s/AKfycbzayrErQKZ_tEom33d4FeY0hKHNEkji-BUs6BhS3hzBZXcdkTCU/exec?name=sponsors" -o _data/sponsors.json
curl -L "https://script.google.com/macros/s/AKfycbzayrErQKZ_tEom33d4FeY0hKHNEkji-BUs6BhS3hzBZXcdkTCU/exec?name=sessions" -o _data/sessions.json
curl -L "https://script.google.com/macros/s/AKfycbzayrErQKZ_tEom33d4FeY0hKHNEkji-BUs6BhS3hzBZXcdkTCU/exec?name=panelers" -o _data/panelers.json
curl -L "https://script.google.com/macros/s/AKfycbzayrErQKZ_tEom33d4FeY0hKHNEkji-BUs6BhS3hzBZXcdkTCU/exec?name=lts" -o _data/lts.json
ruby speaker.rb
