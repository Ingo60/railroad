%%
lambda : '\' apats lambda | '\' apats '->' expr;
apat  : '!' pattern | '?' pattern | pattern  ;
apats : apat | apat apats;
%%
