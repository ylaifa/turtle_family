class TurtlesController < ApplicationController
    def index
        turtles = Turtle.order(:created_at)
        render json: turtles
    end

    def show
        turtle = Turtle.find(params[:id])
        render json: turtle
    end

    def create
    end

    def update
    end

    def destroy
        turtle = Turtle.find(params[:id])
        turtle.destroy
        head :no_content
    end
end
