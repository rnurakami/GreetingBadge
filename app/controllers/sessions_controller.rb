#encoding: utf-8
class SessionsController < ApplicationController

  def callback
#    raise request.env["omniauth.auth"].to_yaml
     auth = request.env["omniauth.auth"]
     person = Person.find_by_provider_and_uid(auth["provider"], auth["name"]) || Person.create_with_omniauth(auth)
#    person = Person.where( :provider => auth["provider"], :uid => auth["uid"] ).first || Person.create_with_omniauth( auth ) 

     session[:person_id] = person.id
     redirect_to :timeline, :notice => "Signed in!"
  end

  def devcreate
    devperson = Person.find_by_name(params["name"])

    if devperson
      session[:person_id] = devperson.id
      redirect_to :timeline, :notice => "Singed in"
    else
      redirect_to :timeline
    end
  end

  def destroy
     session[:person_id] = nil
     redirect_to :timeline, :notice => "Sign out!"
  end

  def failure
     render :text => "<span style='color: red;'>Auth Failure</span>"
  end
end
