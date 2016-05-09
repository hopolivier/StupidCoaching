class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.end_with?("?")
    return("Silly question son...")
  elsif your_message == "I am going to work right now!"
    return("")
  else
    return("I don't care my boy!")
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == your_message.upcase
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return("")
    else
      return("I can feel your motivation! " + coach_answer(your_message))
    end
  else
    return(coach_answer(your_message))
  end
end


end
