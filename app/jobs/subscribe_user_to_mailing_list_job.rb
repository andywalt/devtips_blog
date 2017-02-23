class SubscribeUserToMailingListJob < ActiveJob::Base
	include SuckerPunch::Job
	
	queue_as :default

	def perform(user)
		gb = Gibbon::Request.new(ENV["MAILCHIMP_API_KEY"])
		gb.lists.subscribe({
			:id => ENV["MAILCHIMP_LIST_ID"], 
			:email => {:email => user.email},
			:status => "subscribed",
			:double_optin => false
			})
	end
end