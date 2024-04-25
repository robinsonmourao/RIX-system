class Log < ApplicationRecord
  self.table_name = 'logs'

  attribute :codigo_usuario, :integer
  attribute :comando, :text

  belongs_to :usuario, foreign_key: 'codigo_usuario', class_name: 'Usuario'

  validates :codigo_usuario, presence: true
  validates :comando, presence: true
end