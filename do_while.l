%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
//القواعد الاساسية للعمل
"do"       { return DO; }
"while"    { return WHILE; }
"{"        { return LBRACE; } //left brace
"}"        { return RBRACE; } //right brace
"("        { return LPAREN; }
")"        { return RPAREN; }
";"        { return SEMICOLON; }

[a-zA-Z_][a-zA-Z0-9_]*  { return STATEMENT; }
"true"|"false"|[a-zA-Z0-9_]+ { return CONDITION; }
[ \t\n]    { /* Ignore whitespaces */ }
.          { printf("Unexpected character: %c\n", *yytext); }

%%
//يضمن أن يتوقف عند الوصول إلى نهاية الإدخال.
int yywrap() {
    return 1;
}
