class API < Grape::API
	
	prefix 'api'
	mount Myapi::V1::Securities
end	