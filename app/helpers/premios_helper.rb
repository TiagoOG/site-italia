module PremiosHelper

  def helper_premio_jumbotron(objeto)
    render "premios/jumbotron", :premio => objeto
  end

  def helper_premio_detalhe(objeto, altura=150, largura=150)
    render "premios/premio", :premio_detalhe => objeto, :altura => altura, :largura => largura
  end

  def helper_premio_carousel (premios_lista)
    render "premios/carousel", :premios_lista => premios_lista
  end

end
