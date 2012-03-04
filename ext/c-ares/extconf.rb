require 'mkmf'

case RUBY_PLATFORM
	when /mswin32/, /mingw32/, /bccwin32/
		find_header("ares_config.h", File.expand_path("../config_win32", __FILE__))
	when /solaris/
		find_header("ares_config.h", File.expand_path("../config_sunos", __FILE__))
	when /openbsd/
		find_header("ares_config.h", File.expand_path("../config_openbsd", __FILE__))
	when /darwin/
		find_header("ares_config.h", File.expand_path("../config_darwin", __FILE__))
	when /linux/
		find_header("ares_config.h", File.expand_path("../config_linux", __FILE__))
	when /cygwin/
		find_header("ares_config.h", File.expand_path("../config_cygwin", __FILE__))
	when /netbsd/
		find_header("ares_config.h", File.expand_path("../config_netbsd", __FILE__))
	when /freebsd/
		find_header("ares_config.h", File.expand_path("../config_freebsd", __FILE__))
end
$defs.push "-DHAVE_CONFIG_H"
create_makefile('cares/cares')
