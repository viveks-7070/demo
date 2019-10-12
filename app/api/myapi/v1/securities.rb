module Myapi
	module V1
		class Securities < Grape::API
			version 'v1'

			desc "first get call"
			params do 
				requires :phone, type: String, allow_blank: false
			end

			get 'get_user' do
				User.all
			end	

		end	
	end	
end	