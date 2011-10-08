class MyApp
  register Sinatra::CssSupport
  serve_css '/css', from: root('app/css')
end
