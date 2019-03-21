class CollectionController < ApplicationController
  def index
    @bundls = Bundl.order(:updated_at)
  end
end
