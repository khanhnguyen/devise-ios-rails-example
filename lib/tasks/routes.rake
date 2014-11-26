desc "API Routes"
task :routes do
  V1::Base.routes.each do |api|
    method = api.route_method.ljust(10)
    path = api.route_path
    puts "#{method} #{path}".rjust(5)
  end
end