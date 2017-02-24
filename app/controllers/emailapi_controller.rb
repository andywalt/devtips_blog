class EmailapiController < ApplicationController
	def newsletter
		render params[:newsletter]
	end

	def subscribe
		gb = Gibbon::Request.new(api_key: "7fd5c6c2ae53985888bbfa8a2ab149f6-us14")

		gb.lists("1367b2dcb8").create.members(
			body {
			:email => {:email => "testemail@gmail.com"}})
		
		redirect_to root_path
	end
end
