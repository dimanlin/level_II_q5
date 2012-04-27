require File.expand_path("./", "grap")
require "test_helper"

describe Grap do
  before do
    tmp_dir = File.expand_path("./spec/lib")
    File.delete("#{tmp_dir}/*")
    Grap.exec("http://38mama.ru/forum/index.php?topic=73294.0", tmp_dir)   
    File.delete("#{tmp_dir}/*")
  end
  it {puts "1111111111111111111"}
end
