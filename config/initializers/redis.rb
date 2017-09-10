#$redis = Redis.new(host: 'localhost', port: 6379)

if Rails.env.production?
	$redis = Redis.new(url: ENV["REDIS_URL"])
	# $redis = Redis.new(url: ENV["redis://h:pb18735dbe8ffa32167fa9a501024a318d94031c2bd759d9b951920b001baf604@ec2-34-232-55-169.compute-1.amazonaws.com:43579"])
else
	$redis = Redis.new 
	#(:host => 'localhost', :port => 6379)
end