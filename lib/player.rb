# frozen_string_literal: true

class Player
  attr_reader :choice, :name

  def initialize(params)
    @choice = params.fetch(:choice)
    @name = params.fetch(:name)
  end
end
