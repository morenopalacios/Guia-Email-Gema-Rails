class EnviarEmailController < ApplicationController

  def index
  end

  def enviar
    @pers = Persona.create({ nombre: 'SANO', email: 'williambetancur@gmail.com',email_confirmation: ' ', identificador: "123456789", sexo: 'm', })
      ActionCorreo.bienvenido_email(@pers).deliver
     render json: @pers
 end

end




