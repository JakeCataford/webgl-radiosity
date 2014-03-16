require 'faraday'

task :default => [:compile]
task :compile do
  `rm -rf bin/*`
  `coffee -o bin/ -j bin/radiosity.coffee -c src/`
  `cp -R html/. bin/`
  `cp -R lib/. bin/`
  puts "Done."
end

task :watch do
  `guard`
end
