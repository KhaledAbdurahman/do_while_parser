%{
    #include <stdio.h>
    #include <stdlib.h>
    extern int yylex();
    void yyerror(const char *s);
%}

%token DO WHILE LBRACE RBRACE LPAREN RPAREN SEMICOLON CONDITION STATEMENT

%%

do_while_stmt:
    DO LBRACE stmt_list RBRACE WHILE LPAREN CONDITION RPAREN SEMICOLON
    {
        printf("Valid do-while statement.\n");
    }
    ;

stmt_list:
    /* Can be empty */
    | stmt_list STATEMENT
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Enter a do-while loop to check its syntax:\n");
    yyparse();

    int x;
    scanf("%d", &x);

    return 0;
}
