require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    context "validates presence of first name" do
      it "returns an error if first name is blank" do
        user = User.create(
          first_name: "mattz",
          last_name: "yuu",
          email: "d@d.com",
          password: "12345",
          password_confirmation: "12345"
        )
        expect(user).to_not be_valid
        puts user.errors.full_messages
        expect(user.errors.full_messages).to include("First name can't be blank")
      end
    end

    context "validates presence of last name" do
      it "returns an error if last name is blank" do
        user = User.create(
          first_name: "mattz",
          last_name: "",
          email: "d@d.com",
          password: "12345",
          password_confirmation: "12345"
        )
        expect(user.errors.full_messages).to include("Last name can't be blank")
      end
    end

    context "validates presence of email" do
      it "returns an error if email is blank" do
        user = User.create(
          first_name: "mattz",
          last_name: "yuu",
          email: "",
          password: "12345",
          password_confirmation: "12345"
        )
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
    end

    context "validates all fields are valid" do
      it "returns valid if all fields are provided" do
        user = User.create(
          first_name: "mattz",
          last_name: "yuu",
          email: "d@d.com",
          password: "12345",
          password_confirmation: "12345"
        )
        expect(user).to be_valid
      end
    end
  end
end
