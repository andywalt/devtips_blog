class SubscribeUserToMailingListJob < ActiveJob::Base
	include SuckerPunch::Job
	
	queue_as :default

	def perform(user)
		gb = Gibbon::Request.new(ENV[:api_key])
		gb.lists.subscribe({
			:id => "1367b2dcb8", 
			:email => {:email => user.email},
			:double_optin => false
			})
	end
end