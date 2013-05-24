class StreamsController < ActionController::Base
	include ActionController::Live

	def stream
		response.headers['Content-Type'] = 'text/event-stream'
		render nothing: true
	end
end