require "#{Dir.pwd}/nokogiri/lib/nokogiri"
require 'open-uri'

module Grap
  def self.exec(url, folder_path)
    html = Nokogiri::HTML(open(url)) 
    array_srcs = html.css("img").map {|img| img['src']}

    threads = []

    for src in array_srcs
      threads << Thread.new(src) { |src|
        system("wget #{src} -P #{folder_path}")
      }
    end

    threads.each { |aThread|  aThread.join } 
  end
end

if ARGV.size == 2
  Grap.exec(ARGV.first, ARGV.last)
else
  puts "Wrong arguments"
end
