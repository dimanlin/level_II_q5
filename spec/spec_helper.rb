module Common do
  def self.clear(dir)
    Dir.foreach(dir) do |f|
      if f == file_name or f == '.' or f == '..' then next
      elsif File.directory?(f) then FileUtils.rm_rf(f)
      else FileUtils.rm( f )
      end
    end
  end
end
