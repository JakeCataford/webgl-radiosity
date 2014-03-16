require 'rack'
use Rack::Static,
    :urls => ['/js'],
    :root => "bin"

run lambda { |env|
  [
      200,
      {
            'Content-Type'  => 'text/html',
            'Cache-Control' => 'public, max-age=86400'
          },
      File.open('bin/index.html', File::RDONLY)
    ]
}
