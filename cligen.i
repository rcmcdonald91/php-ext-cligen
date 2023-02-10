%module cligen

%{
#include <cligen/cligen.h>
%}

cligen_handle cligen_init(void);
int cligen_check(cligen_handle);
int cligen_exit(cligen_handle);

