# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TurtlesController, type: :controller do
  describe "#index" do
    let!(:turtles) { create_list(:turtle, 5) }

    subject do
      get :index
    end

    it "returns all the turtles" do
      subject
      expect(json_response[:turtles].size).to eq(5)
    end
  end

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
  describe "#destroy" do
    let!(:turtle) { create(:turtle) }
    let(:id) { turtle.id }

    subject do
      delete :destroy, params: { id: id }
    end

    it "destroys the turtle" do
      expect{ subject }.to change(Turtle, :count).from(1).to(0)
    end

    it "return no_content" do
      subject
      expect(response).to be_no_content
    end

    context "the turtle does not exist" do
      let(:id) { "123" }

      it "returns not found" do
        expect{ subject }.not_to(change(Turtle, :count))
        expect(response).to be_not_found
      end
    end
  end
end
