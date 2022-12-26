class AutomorphicController < ApplicationController
  def input
  end

  def result
    user_number = params[:stop_number]

    @stop_number = user_number.to_i
    @numbers = (1..@stop_number).select { |number| automorphic?(number) }
  end

  def automorphic?(number)
    sqr_number = number * number
    digits = number.to_s.size
    number == sqr_number % (10**digits)
  end
end
