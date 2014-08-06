class ActionCorreo < ActionMailer::Base
    default from: "ingryj.m.p@gmail.com"

	 def bienvenido_email(user)
	    @user = user
	   @url = 'http://codeHero.co'
	    email_with_name = "#{@user.nombre} <#{@user.email}>"
	    mail(to: email_with_name,
	    subject: 'Aprende a programar con nuestros cursos gratis')
	 end

end
