require_relative Dir["lib/*_runner.rb"][0]

image = Mumukit.config.docker_image
n = 1
max = 5

begin
  puts "#{Time.now} [#{n}/#{max}] Fetching image #{image}..."
  Docker::Image.create('fromImage' => image)
rescue => e
  if n <= max
    sleep 2 ** (n + 1)
    n += 1
    retry
  else
    raise e
  end
end