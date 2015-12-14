module TwilioService::Twilio

  module_function
  
  def send_sms email, contact, person
    person = Person.find_by_id(person)
    authy = Authy::API.register_user(email: email, cellphone: contact, country_code: "+91")
    person.update_attributes(authy_id: authy.id, phone_number: contact)
    sms = Authy::API.request_sms(id: authy.id)
  end
  
  def validate authy_id, token
    token = Authy::API.verify(id: authy_id, token: token)
  end

end