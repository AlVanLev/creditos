class Credit < ActiveRecord::Base
  belongs_to :user
  validates :credito, length: { maximum: 30 }, presence:true
  validates :saldoInicial, presence:true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :tasaInteres, presence:true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :plazo, presence:true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :fechaInicio, presence:true
end
