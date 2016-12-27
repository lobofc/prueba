class UsuariosController < ApplicationController

  def index
  	@usuarios = Usuario.all
    if params[action: 'Socio']
      @usuario = Usuario.where(category: 'Socio')
    end
    if params[action: 'Nuevo']
     @usuario = Usuario.where(category: 'Nuevo')
    end
  end

  def new
  	@usuario = Usuario.new
  end

  def create
  	@usuario = Usuario.new(usuario_params)
  	@usuario.save
  	redirect_to usuarios_path
  end


  def usuario_params
      params.require(:usuario).permit(:video, :contenido, category:[])
  end

end
