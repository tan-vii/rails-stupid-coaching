class QuestionsController < ApplicationController

  def ask; end

  def answer
    @question = params[:question] # pren siki user la type dan sa textbox la lor ask la

    @answer =
      if @question == 'I am going to work'
        'Great!'

      elsif @question&.end_with?('?')
        'Silly question, get dressed and go to work!'

      else
        "I don't care, get dressed and go to work!"
      end
  end
end
