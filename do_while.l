%{
    #include "y.tab.h"
%}

%%

"do"       { return DO; }
"while"    { return WHILE; }
"{"        { return LBRACE; }
"}"        { return RBRACE; }
"("        { return LPAREN; }
")"        { return RPAREN; }
";"        { return SEMICOLON; }
[a-zA-Z_][a-zA-Z0-9_]*  { return STATEMENT; }
"true"|"false"|"[a-zA-Z0-9_]+" { return CONDITION; }
[ \t\n]    { /* Ignore whitespaces */ }
.          { printf("Unexpected character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
