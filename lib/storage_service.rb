# To change this template, choose Tools | Templates
# and open the template in the editor.

module Whaler
  class StorageService
    def path_and_filename customer
      File.join(path, "#{customer.customer_id}_#{customer.first_name}_#{customer.last_name}_letter.pdf")
    end

    def path
      path = File.join(File.expand_path("~"), "WhalerOutput")
      FileUtils.mkdir_p path unless File.exists? path
      path
    end
  end
end
