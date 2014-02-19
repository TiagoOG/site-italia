module PremiosHelper

  def helper_premio_jumbotron(objeto)
    render "premios/jumbotron", :premio => objeto
  end

  def helper_premio_detalhe(objeto, altura=150, largura=250)
    render "premios/premio", :premio_detalhe => objeto, :altura => altura, :largura => largura
  end

  def helper_premio_carousel (premios_lista)
    render "premios/carousel", :premios_lista => premios_lista
  end

  def helper_premio_list_thumbnail(premios_list)
    render "premios/list_thumbnail", :premios_list => premios_list
  end

end