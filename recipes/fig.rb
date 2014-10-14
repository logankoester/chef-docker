include_recipe 'pacman'

# Fast, isolated development environments using Docker.
# Fig is a project from Docker.
# http://www.fig.sh/

case node['platform']
when 'arch'
  pacman_aur 'fig-git' do
    action [:build, :install]
  end
else
  fail "The fig recipe does not yet contain installation instructions for `#{node['platform']}. \
    Check http://www.fig.sh/install.html` and open a pull request!"
end
