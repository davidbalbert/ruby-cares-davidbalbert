require 'mkmf'

case RUBY_PLATFORM
	when /mswin32/, /mingw32/, /bccwin32/
		find_header('ares_config.h','./config_win32')
	when /solaris/
		find_header('ares_config.h','./config_sunos')
	when /openbsd/
		find_header('ares_config.h','./config_openbsd')
	when /darwin/
		find_header('ares_config.h','./config_darwin')
	when /linux/
		find_header('ares_config.h','./config_linux')
	when /cygwin/
		find_header('ares_config.h','./config_cygwin')
	when /netbsd/
		find_header('ares_config.h','./config_netbsd')
	when /freebsd/
		find_header('ares_config.h','./config_freebsd')
end

$CFLAGS << " -DHAVE_CONFIG_H"
$defs.push "-DHAVE_CONFIG_H"

create_makefile('cares/cares')
