class AlertNotificationJob < ApplicationJob
  queue_as :default
  def perform(unconcious, fire)
    client = Twilio::REST::Client.new

    if unconcious.to_i != 0
      message = client.messages.create(
        body: "#{unconcious} person is unconscious in your site",
        from: '+12545276628',
        to: '+919384513150'
      )
    end

    if fire.to_i != 0
      message = client.messages.create(
        body: "Fire accident happens in your site",
        from: '+12545276628',
        to: '+919384513150'
      )
    end
  end
end
