class MunicipiosController < CrudTemplateSecundariasController
  before_action :new, only: [:create]

  def new
    @municipio = new_template_secundarias(Municipio)
  end

  def create
    create_template_secundarias(@municipio, 'nome_municipio', municipio_params)
  end

  private

  def municipio_params
    params.permit(:codigo_uf, :nome_municipio)
  end
end
