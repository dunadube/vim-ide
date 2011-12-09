#!/usr/bin/env ruby

git_bundles = [ 
  #  "git://github.com/astashov/vim-ruby-debugger.git",
  #  "git://github.com/scrooloose/nerdtree.git",
  #  "git://github.com/timcharper/textile.vim.git",
  #  "git://github.com/tpope/vim-cucumber.git",
  # "http://github.com/tpope/vim-fugitive.git",
  #  "git://github.com/tpope/vim-git.git",
  #  "git://github.com/tpope/vim-haml.git",
  "http://github.com/tpope/vim-markdown.git",
  #  "git://github.com/tpope/vim-rails.git",
  "http://github.com/tpope/vim-repeat.git",
  "http://github.com/tsaleh/vim-align.git",
  "https://github.com/vim-scripts/L9.git",   # Required by FuzzyFinder
  "http://github.com/vim-scripts/FuzzyFinder.git",
  #  "git://github.com/tsaleh/vim-shoulda.git",
  "http://github.com/Raimondi/delimitMate.git",
  "http://github.com/tsaleh/vim-tcomment.git",
  "http://github.com/msanders/snipmate.vim.git",
  "http://github.com/tsaleh/vim-supertab.git",
  "http://github.com/tsaleh/vim-matchit.git",
  "http://github.com/tpope/vim-surround.git",
  "http://github.com/vim-scripts/taglist.vim.git",
  # "http://github.com/mileszs/ack.vim",

  # Ruby
  "http://github.com/vim-ruby/vim-ruby.git",

  # Javascript Syntax
  # "http://github.com/serverhorror/javascript.vim.git",

# Colorschemes
  # "https://github.com/rphillips/vim-colorschemes.git",
  # "https://github.com/cschlueter/vim-wombat.git",
  # "git://github.com/tpope/vim-vividchalk.git",
  # "https://github.com/jpo/vim-railscasts-theme.git",
  "http://github.com/cschlueter/vim-mustang.git",
  "http://github.com/goatslacker/mango.vim.git",
  # "https://github.com/vim-scripts/peaksea.git",
]

vim_org_scripts = [
#  ["IndexedSearch", "7062",  "plugin"],
#  ["gist",          "12732", "plugin"],
#  ["jquery",        "12107", "syntax"],
]


require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "Trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "  Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

vim_org_scripts.each do |name, script_id, script_type|
  puts "  Downloading #{name}"
  local_file = File.join(name, script_type, "#{name}.vim")
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
end

