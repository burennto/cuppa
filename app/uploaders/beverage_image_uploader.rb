# encoding: utf-8

class BeverageImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  storage :file

  process :resize_to_fit => Beverage::IMAGE_DIMENSIONS

  process :convert => 'png'

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    "drink_#{model.name.downcase}.png" if original_filename
  end

end
