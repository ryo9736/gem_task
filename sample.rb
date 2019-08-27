require "slack-notify"
require "clockwork"
include Clockwork

handler do |job|
  puts "Running #{job}"
end

require 'active_support/time'

module Clockwork

  client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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",)

  every(3.minutes,  client) do
    client.notify("okkkkk!!!!!!")
  end
end

