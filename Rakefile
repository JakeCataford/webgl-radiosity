require 'faraday'

task :default => [:compile]
task :compile do
  `rm -rf bin/*`
  `coffee -o bin/js/ -j bin/radiosity.coffee -c src/`
  `cp -R html/. bin/`
  `cp -R lib/. bin/js/`
  puts "Done."
end

task :watch do
  `guard`
end

task :server do
end
