module ParceirosHelper
  def helper_parceiro_show_thumbnail(parceiro, altura=150, largura=150)
    render "parceiros/thumbnail", :parceiro_thumbnail => parceiro, :altura => altura, :largura => largura
  end

  def helper_parceiro_list_thumbnail(parceiros_list)
    render "parceiros/list_thumbnail", :parceiros_lista => parceiros_list
  end
end
