class QuestionsController < ApplicationController

  def ask
  end

  def answer
#     Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.
   @question = params[:question]
   if @question == "I am going to work"
    @answer = "Great!"
   elsif @question.strip.end_with?('?')
    @answer = "Silly question, get dressed and go to work!."
   elsif @question == "Bonjour"
    @answer = "Bah voilà c'est pas trop tot"
   else
    @answer = "I don't care, get dressed and go to work!."
  end
end
end
