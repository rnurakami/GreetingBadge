#encoding: utf-8
class SessionsController < ApplicationController

  def callback
#    raise request.env["omniauth.auth"].to_yaml
     auth = request.env["omniauth.auth"]
     person = Person.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Person.create_with_omniauth(auth)
#    person = Person.where( :provider => auth["provider"], :uid => auth["uid"] ).first || Person.create_with_omniauth( auth ) 

     session[:person_id] = person.id
     redirect_to :timeline, :notice => "Signed in!"
  end

  def destroy
     session[:person_id] = nil
     redirect_to :timeline, :notice => "Sign out!"
  end

end
