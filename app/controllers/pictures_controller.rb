class PicturesController < ApplicationController
  def index
    @pictures = [
      {
        :title => "The old church on the coast of the white sea",
        :artist => "Sergey Ershov",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jgp"
      },
      {
        :title => "Sea Power",
        :artist => "Stephen Scullion",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jgp"
      },
      {
        :title => "Into the Poppies",
        :artist => "John Wilhelm",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jgp"
      }
    ]
  end

  def show
    @pictures = [
      {
        :title => "The old church on the coast of the white sea",
        :artist => "Sergey Ershov",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jgp"
      },
      {
        :title => "Sea Power",
        :artist => "Stephen Scullion",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jgp"
      },
      {
        :title => "Into the Poppies",
        :artist => "John Wilhelm",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jgp"
      }
    ]
    @picture = @pictures[params[:id].to_i]
  end

  def new
  end

  def create
    render :text => "Saving a picture. URL: #{params[:url]},  Title: #{params[:title]}, Artist: #{params[:artist]}"
  end





end