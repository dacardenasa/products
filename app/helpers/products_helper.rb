module ProductsHelper
  def form_title 
    @product.new_record? ? "Nuevo Producto" : "Editar Producto"
  end
  def form_submit
    @product.new_record? ? "Crear Producto" : "Actualizar Producto"
  end
end
