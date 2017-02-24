class SubscribeUserToMailingListJob < ActiveJob::Base
	include SuckerPunch::Job
	
	queue_as :default

	def perform(user)
		gibbon = Gibbon::Request.new(api_key: "7fd5c6c2ae53985888bbfa8a2ab149f6-us14")
		gibbon.lists.("1367b2dcb8").members.create(
			body: {
				email_address: user.email,
				status: "subscribed"
				})
	end
end