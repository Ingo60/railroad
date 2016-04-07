#
#
#

MAIN = de.contexo.railroad.Main
FREGEC = /usr/bin/time -f "%E %Mk" java -jar fregec.jar -sp src/ -d build
FREGE  = /usr/bin/time -f "%E %Mk" java -cp build/:fregec.jar  
Y = ~/Frege/frege/frege/compiler/grammar/Frege.y
E = ~/Frege/frege/frege/compiler/grammar/Lexical.ebnf
O = Grammar.ebnf

all: 
	$(FREGEC) -make -O $(MAIN)

run:
	$(FREGE) $(MAIN) $(Y) $(E) > $(O)
