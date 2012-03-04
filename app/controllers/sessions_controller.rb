#encoding: utf-8
class SessionsController < ApplicationController

  def callback
    auth = request.env["omniauth.auth"]
    person = Person.find_by_provider_and_uid(auth["provider"],auth["uid"]) || Person.create_with_omniauth(auth)
    
    session[:person_id] = person_id
    redirect_to :root, :notice => "Signed in!"
  end

  def destroy
     session[:person_id] = nil
     redirect_to :root, :notice => "Sign out!"
  end

end
