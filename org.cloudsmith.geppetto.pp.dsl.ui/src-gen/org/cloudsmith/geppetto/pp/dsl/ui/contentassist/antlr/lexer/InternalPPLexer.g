
/*
* generated by Xtext
*/
lexer grammar InternalPPLexer;


@header {
package org.cloudsmith.geppetto.pp.dsl.ui.contentassist.antlr.lexer;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}




KEYWORD_62 : 'inherits';

KEYWORD_61 : 'default';

KEYWORD_59 : 'define';

KEYWORD_60 : 'import';

KEYWORD_55 : 'class';

KEYWORD_56 : 'elsif';

KEYWORD_57 : 'false';

KEYWORD_58 : 'undef';

KEYWORD_51 : 'case';

KEYWORD_52 : 'else';

KEYWORD_53 : 'node';

KEYWORD_54 : 'true';

KEYWORD_47 : '<<|';

KEYWORD_48 : '\\${';

KEYWORD_49 : 'and';

KEYWORD_50 : '|>>';

KEYWORD_22 : '!=';

KEYWORD_23 : '!~';

KEYWORD_24 : '${';

KEYWORD_25 : '+=';

KEYWORD_26 : '+>';

KEYWORD_27 : '->';

KEYWORD_28 : '<-';

KEYWORD_29 : '<<';

KEYWORD_30 : '<=';

KEYWORD_31 : '<|';

KEYWORD_32 : '<~';

KEYWORD_33 : '==';

KEYWORD_34 : '=>';

KEYWORD_35 : '=~';

KEYWORD_36 : '>=';

KEYWORD_37 : '>>';

KEYWORD_38 : '\\"';

KEYWORD_39 : '\\$';

KEYWORD_40 : '\\\'';

KEYWORD_41 : '\\\\';

KEYWORD_42 : 'if';

KEYWORD_43 : 'in';

KEYWORD_44 : 'or';

KEYWORD_45 : '|>';

KEYWORD_46 : '~>';

KEYWORD_1 : '!';

KEYWORD_2 : '"';

KEYWORD_3 : '\'';

KEYWORD_4 : '(';

KEYWORD_5 : ')';

KEYWORD_6 : '*';

KEYWORD_7 : '+';

KEYWORD_8 : ',';

KEYWORD_9 : '-';

KEYWORD_10 : '/';

KEYWORD_11 : ':';

KEYWORD_12 : ';';

KEYWORD_13 : '<';

KEYWORD_14 : '=';

KEYWORD_15 : '>';

KEYWORD_16 : '?';

KEYWORD_17 : '@';

KEYWORD_18 : '[';

KEYWORD_19 : ']';

KEYWORD_20 : '{';

KEYWORD_21 : '}';



RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/' (' '|'\u00A0'|'\t')* ('\r'? '\n')?;

RULE_SL_COMMENT : '#' ~(('\r'|'\n'))* ('\r'? '\n')?;

RULE_WS : (' '|'\u00A0'|'\t'|'\r'|'\n')+;

RULE_DOLLAR_VAR : '$' '::'? ('0'..'9'|'a'..'z'|'A'..'Z'|'_')+ ('::' ('0'..'9'|'a'..'z'|'A'..'Z'|'_')+)*;

RULE_WORD_CHARS : '::'? ('0'..'9'|'a'..'z'|'A'..'Z'|'_'|'.'|'-')+ ('::' ('0'..'9'|'a'..'z'|'A'..'Z'|'_'|'.'|'-')+)*;

RULE_REGULAR_EXPRESSION : '/' RULE_RE_BODY '/' RULE_RE_FLAGS?;

fragment RULE_RE_BODY : RULE_RE_FIRST_CHAR RULE_RE_FOLLOW_CHAR*;

fragment RULE_RE_FIRST_CHAR : (~(('\n'|'*'|'/'|'\\'))|RULE_RE_BACKSLASH_SEQUENCE);

fragment RULE_RE_FOLLOW_CHAR : (RULE_RE_FIRST_CHAR|'*');

fragment RULE_RE_BACKSLASH_SEQUENCE : '\\' ~('\n');

fragment RULE_RE_FLAGS : ('a'..'z')+;

RULE_ANY_OTHER : .;



