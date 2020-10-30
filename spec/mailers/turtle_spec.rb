require "rails_helper"

RSpec.describe TurtleMailer, type: :mailer do
  describe "create" do
    let(:turtle) { create(:turtle) }

    it "send email" do
      TurtleMailer.create(turtle).deliver_now
    end
  end
end
