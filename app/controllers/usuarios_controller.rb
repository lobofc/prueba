class UsuariosController < ApplicationController

  def index
  	@usuarios = Usuario.all
    if params[action: 'Socio']
      @usuario = Usuario.where(category: Socio)
    end
    if params[id: 'category_nuevo']
     @usuario = Usuario.where(category: Nuevo)
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
      params.require(:usuario).permit(:video, :concept, category:[])
  end
  
end
