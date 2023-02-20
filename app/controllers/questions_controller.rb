# frozen_string_literal: true

# Controller for the questions
class QuestionsController < ApplicationController
  def answer
    @question = params[:ask]

    @answer = if @question.include? ('?')
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work right now!'
                ''
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
