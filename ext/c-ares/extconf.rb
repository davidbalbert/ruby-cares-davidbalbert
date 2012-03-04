require 'mkmf'

case RUBY_PLATFORM
	when /mswin32/, /mingw32/, /bccwin32/
		have_header("config_win32/ares_config.h")
	when /solaris/
		have_header("config_sunos/ares_config.h")
	when /openbsd/
		have_header("config_openbsd/ares_config.h")
	when /darwin/
		have_header("config_darwin/ares_config.h")
	when /linux/
		have_header("config_linux/ares_config.h")
	when /cygwin/
		have_header("config_cygwin/ares_config.h")
	when /netbsd/
		have_header("config_netbsd/ares_config.h")
	when /freebsd/
		have_header("config_freebsd/ares_config.h")
end
$defs.push "-DHAVE_CONFIG_H"
create_makefile('cares/cares')
