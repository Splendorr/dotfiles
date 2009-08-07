def stop_error(message)
  puts "ERROR: #{message}"
  exit(1)
end

def symlink(target, link)
  puts "Linking #{link} => #{target}"
  if File.symlink?(link)
    puts "  * deleting existing symlink #{link}"
    File.unlink(link)
  elsif File.exist?(link)
    stop_error("File exists: #{link}")
  end
  File.symlink(target, link)
  puts
end

desc "Install all dotfiles"
task :install do
  home = ENV['HOME']
  pwd = File.dirname(__FILE__)

  %w(irbrc irbrc.d railsrc railsrc.d bash_profile bash_profile.d inputrc ackrc).each do |file|
    symlink("#{pwd}/#{file}", "#{home}/.#{file}")
  end
end