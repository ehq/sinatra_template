class MyApp
  configure :production do
    set :scss, scss.merge(:style => :compressed)
  end

  configure :development do
    register Sinatra::Reloader
    dont_reload "initializers/*.rb"
    also_reload "app/models/*.rb"

    set :scss, scss.merge(:line_numbers => true, :debug_info => true, :always_check => true)
    enable :show_exceptions
  end
end
