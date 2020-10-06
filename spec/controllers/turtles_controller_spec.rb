require 'rails_helper'

RSpec.describe TurtlesController, type: :controller do
    describe "#index"
    describe "#show" do
        let(:turtle) { create(:turtle) }
        let(:id) { turtle.id }

        subject do
            get :show, params: { id: id }
        end

        it "returns the turtle" do
            subject
            expect(json_response[:turtle][:id]).to eq(turtle.id)
            expect(json_response[:turtle][:name]).to eq(turtle.name)
            expect(json_response[:turtle][:color]).to eq(turtle.color)
        end 

        context "the turtle does not exist" do
            let(:id) { "123" }

            it "return not found" do
                subject
                expect(response).to be_not_found
            end
        end
    end
    describe "#create"
    describe "#update"
    describe "#destroy" 
end
