module UsuariosHelper

 def checked(area)
  @usuario.category.nil? ? false : @usuario.category.match(area)
end

end
