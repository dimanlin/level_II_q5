module Common

  def self.root_dir
    File.expand_path("./")
  end

  def self.clear_image_dir
    lib_dir = File.join(self.root_dir, "spec", "tmp")
    Dir.foreach(lib_dir) do |f|
      next if f == '.' or f == '..'
      File.delete(File.join(lib_dir, f))
    end
  end

  def self.check_file(file)
    path_file = File.join(self.root_dir, "spec", "tmp", file)  
    File.exist?(path_file)
  end

end

