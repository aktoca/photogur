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
  def picture0
    @picture = {
        :title => "The old church on the coast of the white sea",
        :artist => "Sergey Ershov",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jgp"
      }
    end
  def picture1
      @picture = {
        :title => "Sea Power",
        :artist => "Stephen Scullion",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jgp"
      }
  end
end