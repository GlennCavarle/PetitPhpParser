grammar
ifStatement
	"if(expression){
		innerStatements;
	} else if(expression){
		innerStatements;
	} else {
		innerStatements;
	}
	
	if(expression):
		innerStatements;
	elseif (expression):
		innerStatements;
	else:
		innerStatements;
	endif;
	
	if(expression) return true; 
	
	Its possible to mix up syntax!"	
	^ 	if,
		condition,
		(ifStatementAlternateSyntax / ifStatementDefaultSyntax)
		