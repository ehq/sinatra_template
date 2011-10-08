class MyApp
  register Sinatra::JsSupport
  register Sinatra::CompressedJS

  # Load the files in order
  # NOTE: Populate the arrays below with js/coffee files that you want loaded.
  js_files = %w{}.map { |file| root("app/js/#{file}.js") }
  coffee_files = %w{}.map { |file| root("app/js/#{file}.coffee") }

  serve_js '/js',
    from: root('app/js'),
    :files => js_files + coffee_files

  serve_compressed_js :application_js,
    :path   => '/js/app.js',
    :prefix => '/js',
    :root   => root('app/js'),
    :files  => js_files + coffee_files
end
