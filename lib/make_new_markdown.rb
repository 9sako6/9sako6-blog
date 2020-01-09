require "date"

title = ""
date = Date.today.strftime("%Y-%m-%d")
path = "./md"

if ARGV.empty?
  puts "Please input the title:"
  title = gets.chomp
else
  title = ARGV[0]
end

template = <<"EOS"
---
title: ""
description: ""
tags:
  - ""
created_at: #{date}
updated_at: ""
draft: true
---
EOS

File.open("#{path}/#{date}-#{title}.md", "w") do |file|
  file.puts template
end

img_path = "./static/posts_images"

Dir.mkdir("#{img_path}/#{date}-#{title}")
