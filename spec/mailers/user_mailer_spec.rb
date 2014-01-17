require "spec_helper"

describe UserMailer do
  describe "unit_completed" do
    let(:mail) { UserMailer.unit_completed }

    it "renders the headers" do
      expect(mail.subject).to eq("Unit completed")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
