class Product < ActiveRecord::Base
  attr_accessible :name, :precio, :cantDulc, :cantAlm, :minimo
  validates :name, :presence => true
  validates :precio,  :presence=>true, :numericality => true
  validates :cantDulc, :presence => true, :numericality => true
  validates :cantAlm, :presence => true, :numericality => true
  validates :minimo, :presence => true, :numericality => true
  has_many :d_combos, :dependent => :destroy
  has_many :e_combos, :through => :d_combos
  has_many :d_sales
  has_many :d_suppliers
  has_many :suppliers, :through => :d_suppliers
end
