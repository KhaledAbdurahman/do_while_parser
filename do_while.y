%{
//يتضمن المكتبات الاساسية.
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
void yyerror(const char *s);
%}
//تعريف التوكن
%token DO WHILE LBRACE RBRACE LPAREN RPAREN SEMICOLON CONDITION STATEMENT

%%

do_while_stmt:
    DO LBRACE stmt_list RBRACE WHILE LPAREN CONDITION RPAREN SEMICOLON
    {
        printf("Valid do-while\n");
    }
    ;

//يسمح بعبارات متعددة داخل {}.
stmt_list:
    /* Can be empty */
    | stmt_list STATEMENT
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Enter a do-while loop:\n");
    yyparse();

    int num;
    scanf("%d", &num);
    return 0;
}
