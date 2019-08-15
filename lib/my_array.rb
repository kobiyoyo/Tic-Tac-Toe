# frozen_string_literal: true

class Array
  def all_empty?
    all? { |x| x.to_s.empty? }
  end

  def all_same?
    all? { |x| x == self[0] }
  end

  def any_empty?
    any? { |x| x.to_s.empty? }
  end

  def none_empty?
    !any_empty?
  end
end
