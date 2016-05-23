require 'httparty'

class Githubbackup
  
  def initialize
  end
  
  def list_repos
    url = "https://api.github.com/users/clairgriffiths/repos"
    request = HTTParty.get(url)
    request.each do |repo|
      github_backup(repo["name"])
    end
  end
  
  def github_backup(repo_name)
    url = "https://api.github.com/repos/clairgriffiths/#{repo_name}/tarball"
    request = HTTParty.get(url)
    open("temp/github-#{repo_name}.tar.gz", "wb") do |file|
      file.write(request.body)
    end    
  end
  
  def combine_files
    `tar zcvf hbs-backup-github-#{Date.today}.tar.gz temp`
  end
  
end

bk = Githubbackup.new
bk.list_repos
bk.combine_files