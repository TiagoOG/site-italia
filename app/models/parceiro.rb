class Parceiro < ActiveRecord::Base
  attr_accessible :link, :logo, :nome

  has_attached_file :logo, styles: { medium: "300x300>", thumbnail: "150x150<" }

  # SCOPES
  scope :order_by_data_criacao, order("created_at DESC")
end
