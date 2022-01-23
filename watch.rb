#!/usr/bin/env ruby
# watch.rb by Brett Terpstra, 2011 <http://brettterpstra.com>
# with credit to Carlo Zottmann <https://github.com/carlo/haml-sass-file-watcher>

trap("SIGINT") { exit }

if ARGV.length < 1
  puts "Usage: #{$0} watch_folder"
  puts "Example: #{$0} ."
  exit
end

dev_extension = 'dev'
filetypes = ['css','html','htm','php','rb','erb','less','js']
watch_folder = ARGV[0]
puts "Watching #{watch_folder} and subfolders for changes in project files..."

while true do
  files = []
  filetypes.each {|type|
    files += Dir.glob( File.join( watch_folder, "**", "*.#{type}" ) )
  }
  new_hash = files.collect {|f| [ f, File.stat(f).mtime.to_i ] }
  hash ||= new_hash
  diff_hash = new_hash - hash

  unless diff_hash.empty?
    hash = new_hash

    diff_hash.each do |df|
      puts "Detected change in #{df[0]}, refreshing"
      %x{osascript<<ENDGAME
        # tell application "Safari"
        #   set docUrl to URL of document 1
        #   set URL of document 1 to docUrl
        # end tell
        tell application "Safari" to activate
        tell application "System Events"
          keystroke "r" using command down
        end tell
      }
    end
  end

  sleep 1
end