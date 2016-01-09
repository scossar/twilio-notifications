# name: discourse-twilio-notifications
# about: sends sms notifications through twilio from Discourse
# version: 0.1
# authors: scossar

# A proof-of-concept for integrating twilio sms notifications with Discourse.
# This plugin assumes that user.custom_fields["enable_sms"] and user.custom_fields["mobile"]
# have been set through SSO.

enabled_site_setting :twilio_notifications_enabled

gem 'twilio-ruby', '4.9.0'

after_initialize do
  Email::Sender.class_eval do
    def account_sid
      SiteSetting.twilio_notifications_account_sid
    end

    def auth_token
      SiteSetting.twilio_notifications_auth_token
    end

    def twilio_phone_number
      "+#{SiteSetting.twilio_notifications_phone_number}"
    end

    def enable_twilio_messaging?(user)
      user.custom_fields["enable_sms"]
    end

    def user_mobile(user)
      "+" + user.custom_fields["mobile"]
    end

    def user_mobile?(user)
      user.custom_fields["mobile"]
    end

    def send

      if enable_twilio_messaging?(@user) && user_mobile?(@user) && @message.text_part.body
        client = Twilio::REST::Client.new account_sid, auth_token

        # This should be done somewhere else
        text_regexp = /\[email-indent\]((.|\n)*)\[\/email-indent\]/
        raw_message = @message.text_part.body.to_s
        parsed_message = text_regexp.match(raw_message).captures[0]

        client.account.messages.create(
            :from => twilio_phone_number,
            :to => user_mobile(@user),
            :body => parsed_message
        )
      end

      super
    end
  end
end