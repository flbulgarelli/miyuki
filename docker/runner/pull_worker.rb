require_relative Dir["lib/*_runner.rb"][0]

image = Mumukit.config.docker_image
n = 1
max = 5

begin
  puts "[#{n}/#{max}]Fetching image #{image}..."
  Docker::Image.create('fromImage' => image)
rescue => e
  sleep 5
  if n <= max
    n += 1
    retry
  else
    raise e
  end
end