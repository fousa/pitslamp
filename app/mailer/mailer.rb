class Mailer < ActionMailer::Base

  default :to => "jelle@fousa.be"

  def contact_notifier(contact)
    @contact = contact

    mail :to      => CONFIG["pitslamp"]["owner_email"],
         :from    => "#{contact.name} <#{contact.email}>",
         :subject => "[PitsLamp #{CONFIG['pitslamp']['type']}] #{contact.subject}" do |format|
        format.text { render "contact" }
    end
	end

end