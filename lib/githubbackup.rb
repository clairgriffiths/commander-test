require 'httparty'

class Githubbackup
  
  def initialize
  end
  
  def github_backup
    url = "https://api.github.com/repos/clairgriffiths/Inventory/tarball"
    request = HTTParty.get(url)
    open("hbs-backup-github-#{Date.today}.tar.gz", "wb") do |file|
      file.write(request.body)
    end    
  end
  
end
