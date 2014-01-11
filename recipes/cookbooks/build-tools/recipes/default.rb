execute "update apt-get" do
  command "apt-get update"
end

package 'build-essential'
package 'make'
package 'valgrind'

