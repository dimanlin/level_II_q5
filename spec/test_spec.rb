require File.expand_path("./", "grap")
require "spec_helper"

describe Grap do
  around(:each) do |example|
    Common.clear_image_dir
  end

  before do
    tmp_dir = File.expand_path("./spec/tmp")
    Common.clear_image_dir
    Grap.exec("http://38mama.ru/forum/index.php?topic=73294.0", tmp_dir)   
    Common.clear_image_dir
  end

  it {Common.check_file("Logo_reklamno.gif").should be_true}
end
