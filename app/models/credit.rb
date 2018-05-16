class Credit < ActiveRecord::Base
  belongs_to :user
  validates :credito, length: { maximum: 30 }, presence:true
  validates :saldoInicial, presence:true
  validates :tasaInteres, presence:true
  validates :plazo, presence:true
  validates :fechaInicio, presence:true
end
