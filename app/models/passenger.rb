class Passenger < ApplicationRecord
  belongs_to :booking, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(params[])
  end
end
