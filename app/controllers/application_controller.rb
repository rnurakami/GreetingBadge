#encoding: utf-8
class ApplicationController < ActionController::Base

  protect_from_forgery

  helper_method :current_person

  private

  def current_person
    @current_person ||= Person.find(session[:person_id]) if session[:person_id]
  end

end
