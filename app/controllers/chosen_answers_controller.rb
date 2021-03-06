class ChosenAnswersController < ApplicationController
    before_action :set_chosen_answer, only: %i [ :show, :update, :destroy ]

    # GET /chosen_answers 
    def index
        @chosen_answers = get_chosen_answers
    
        render json: @chosen_answers
    end

    # GET /chosen_answers/1
    def show 
        render json: @chosen_answers
    end

    # POST /chosen_answers
    def create
        @chosen_answer = ChosenAnswer.new(chosen_answer_params)

        if @chosen_answer.save
            render json: get_chosen_answers, status: :created, location: @chosen_answer

        else 
            render json: @chosen_answer.errors, status: :unprocessable_entity
        end
    end

# PATCH/PUT /chosen_answers/1
def update
    if @chosen_answer.update(chosen_answer_params)
        render json: get_chosen_answers
    else
        render json: @chosen_answer.errors, status: :unprocessable_entity
    end
end


#DELETE /chosen_answers/1
def destroy
    @chosen_answer.destroy
    render json: get_chosen_answers
end

private
    def get_chosen_answers
        ChosenAnswer.order('created_at DESC') 
    end

    def set_chosen_answer
        @chosen_answer = ChosenAnswer.find(params[:id])
    end

    

