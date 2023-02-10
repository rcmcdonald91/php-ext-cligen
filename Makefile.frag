$(srcdir)/cligen_wrap.c: $(srcdir)/cligen.i
	swig -php -I/usr/local/include cligen.i
