require_relative "../lib/citizen"

describe Citizen do
    # it "is a valid Class" do
    #     # setting up sample data to run the test
    #     citizen = Citizen.new

    #     # actual        == expected
    #     # citizen.class == Citizen

    #     # running the test, comparing actual output to expected output
    #     expect(citizen.class).to eq(Citizen)
    # end

    it "has a first name, that is readable" do
        citizen = Citizen.new("francesca", "", 0)

        expect(citizen.first_name).to eq("francesca")
    end

    it "has a last name, that is readable" do
        citizen = Citizen.new("francesca", "milk", 0)

        expect(citizen.last_name).to eq("milk")
    end

    it "has an age, that is readable" do
        citizen = Citizen.new("francesca", "", 29)

        expect(citizen.age).to eq(29)
    end

    it "can vote if age is higher or equal than 18" do
        citizen = Citizen.new("francesca", "", 18)

        expect(citizen.can_vote?).to eq(true)
    end

    it "cannot vote if age is lower than 18" do
        citizen = Citizen.new("francesca", "", 15)

        expect(citizen.can_vote?).to eq(false)
    end

    it "Should have a full name capitalized" do
        citizen = Citizen.new("francesca", "milk", 15)

        expect(citizen.full_name).to eq("Francesca Milk")
    end
end
