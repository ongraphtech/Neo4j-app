class StaticPagesController < ApplicationController
  require 'neo4j'

  def home
    @micropost = Micropost.new if signed_in?
  end
end
