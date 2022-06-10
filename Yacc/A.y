//yacc program //declaration section
%{ #include<stdio.h> 
%}
//definition section

%token NUMBER ID 
%left '+' '-'
%left '*' '/'

%%
expr: expr '+' expr |expr '-' expr |expr '*' expr |expr '/' expr |'-'NUMBER
|'-'ID |'('expr')' |NUMBER |ID

%%

// token from lex file // left associative
// grammer production rule

//main function
main()
{
printf("Enter the expression\n"); yyparse();
printf("\nExpression is valid\n"); exit(0);
}
//if error occured

int yyerror(char *s)
{
printf("\nExpression is invalid"); exit(0);
}

