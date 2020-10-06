class TurtlesController < ApplicationController
    def index
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
    end
end
