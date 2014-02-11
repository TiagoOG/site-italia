class Premio < ActiveRecord::Base
  attr_accessible :descricao, :resumo, :titulo, :ativo, :foto

  has_attached_file :foto, styles: { medium: "300x300>", thumbnail: "100x100<" }

  # INICIALIZACOES
  after_initialize :default_values, :if => :new_record?

  # VALIDACOES
  validates_presence_of :titulo, :descricao

  # SCOPES
  scope :where_ativo, where(ativo: true)
  scope :order_by_data_publicacao, order("data_publicacao DESC")

  def default_values
    self.ativo = true
  end

end
