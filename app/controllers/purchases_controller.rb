class PurchasesController < ApplicationController
  def buy
    @result = 666
    h = {:foo => 0, :bar => 1, :baz => 2}
    render :json => h
  end
end
