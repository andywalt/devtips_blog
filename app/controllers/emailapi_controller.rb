class EmailapiController < ApplicationController
	def newsletter
		render params[:newsletter]
	end

	def subscribe
		gb = Gibbon::Request.new

		gb.lists.subscribe({
			:id => ENV["MAILCHIMP_LIST_ID"],
			:email => {:email => params[:email][:address]}
			})
		redirect_to root_path
	end
end
