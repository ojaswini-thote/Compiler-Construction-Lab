%{
#include "y.tab.h"
%}

%%
"int"|"float"|"char"    { return KEY; }
[a-zA-Z_]               { return ID; }
","                     { return COMMA; }
";"                     { return SEMI; }
[ \t\n]+                { /* Ignore whitespace */ }
.                       { return yytext[0]; }
%%

int yywrap(void)
{
    return 1;
}