class FakeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "I'm starting the fake job"
    sleep 20
    puts "OK I'm done now"
  end
end
