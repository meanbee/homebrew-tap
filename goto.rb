require 'formula'

class Goto < Formula
	homepage 'https://github.com/shawesome/goto'
    url 'http://cdn.meanbee.com.s3.amazonaws.com/brew/dac/goto-3fbc5bfdb03013f535915ca7912db70c4fcc0be4.tar.gz'
    sha1 'cb261abe84ee8f75344d8a7bc2a35889dbbce72d'

    def install
    	bin.install "goto"
    	bin.install "goto_aux"
    end

	def post_install
		shell = ENV['SHELL']

		ohai "Attempting to automatically complete installation.."

		if shell =~ /\/zsh$/
			_install_oneliner_to_file "zsh", "~/.zshrc"
		elsif shell =~ /\/bash$/
			_install_oneliner_to_file "bash", "~/.bashrc"
		else
			opoo "Your shell was not identified, please follow post installation steps."
		end
	end

  def caveats; <<-EOS
Open a new window to use goto!

Check this output to establish whether or not your shell was
identifed or not.  If you shell was identified then there are no
further installation steps and the goto command is ready to use.

If your shell was not identified, then you will need to add the
following to your shell configuration file:

#{_shell_func()}
EOS
  end

  protected
  	def _shell_func
  		<<-FUNC
function goto {
    eval $(python #{prefix}/bin/goto_aux \$*)
}
  		FUNC
  	end

  	def _shell_func_oneliner
  		_shell_func.gsub(/\s{2,}/, ' ').gsub(/\n/, ' ')
  	end

  	def _install_oneliner_to_file(shell_name, file)
		ohai "Detected #{shell_name}! Appending configuration to #{file}"
		system "echo '" + _shell_func_oneliner() + "' >> #{file}"
		ohai "Installation complete. Open a new shell session!"
  	end
end
