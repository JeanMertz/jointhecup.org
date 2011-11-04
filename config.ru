use Rack::Static, 
  :urls => ["/styles", "/scripts", "/images", "/index.html", "/hoe.html", "/deelnemers.html", "/restaurants.html", "/contact.html", "/antwoorden.html"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
