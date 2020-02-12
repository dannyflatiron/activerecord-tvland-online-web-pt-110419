require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    binding.pry
    actors.map do |character|
      character.name
    end
  end
end
