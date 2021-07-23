module Request 
	module RequestHelper


		def get_response(url, method, headers, body)
			send(method, url, body)
		end

		def json_response
			JSON.parse(response.body) 
		end

		def stub_service_request(klass, method, response={}, &block)
			if block_given?
				allow(klass).to receive(method), &block
			else
				allow(klass).to receive(method).and_return(response)
			end
		end
	end
end
