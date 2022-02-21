class QuestionsController < ApplicationController
  def ask; end

  def answer
    your_message = params[:message]
    @answer = coach_answer_enhanced(your_message)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == "i am going to work right now!"
      ''
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    answer = coach_answer(your_message)
    if answer != ""
      if your_message.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ""
    end
  end

  def index; end
end
