class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      params[:question] = "Great!"
    elsif params[:question].include?('?')
      params[:question] = "Silly question, get dressed and go to work!"
    else
      params[:question] = "I don't care, get dressed and go to work!"
    end
  end
end