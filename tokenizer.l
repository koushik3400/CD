FILE *yyin;

%{
int keywords = 0, identifiers = 0, operators = 0, symbols = 0 ;
%}

%%

"while"|"if"|"else"|"for"|"int"|"float"|"char"|"string"|"long int"|"long long int"|"double"|"main" {keywords++;}

[a-zA-Z_]+[0-9]* {identifiers++;}

"<="|"=="|"="|"++"|"-"|"*"|"+"|"<"|">"|"--"|">="|"/" {operators++;}

";"|","|"("|")" {symbols++; }

. ;
%%

yywrap(){}

void main(int argc, char **argv)
{
/* Process command line args*/

yyin = fopen("file.c", "r");
yylex();

printf("\n Total no. of keywords = %d\n", keywords);
printf("\n Total no. of identifiers = %d\n", identifiers);
printf("\n Total no. of operators = %d\n", operators);
printf("\n 1Total no. of symbols = %d\n", symbols);
fclose(yyin);
}
