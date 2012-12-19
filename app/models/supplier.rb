class Supplier < ActiveRecord::Base
  attr_accessible :nombre, :rfc
  has_many :d_suppliers
  has_many :products, :through => :d_suppliers
end