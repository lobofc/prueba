class UsuariosController < ApplicationController

  def index
  	@usuarios = Usuario.all
    if params[:filter].present?
      if params[:filter] == 'Socio'
        @usuarios = Usuario.where(category: 'Socio')
      elsif params[:filter] == 'Nuevo'
        @usuarios = Usuario.where(category: 'Nuevo')
      end
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
