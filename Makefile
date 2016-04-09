#
#
#

MAIN = de.contexo.railroad.Main
FREGEC = /usr/bin/time -f "%E %Mk" java -jar fregec.jar -sp src/:$(FXSRC)/frege -d build
FREGE  = /usr/bin/time -f "%E %Mk" java -cp build/:fregec.jar  
Y = ~/Frege/frege/frege/compiler/grammar/Frege.y
E = ~/Frege/frege/frege/compiler/grammar/Lexical.ebnf
O = Grammar.ebnf
FXSRC = /home/ingo/Frege/FregeFX/fregefx/src/main/


clean:
	rm -rf build && mkdir -p build

all: 
	$(FREGEC) -make -O $(MAIN)

run:
	$(FREGE) $(MAIN) $(Y) $(E) > $(O)

test:
	$(FREGE) $(MAIN) test.y lex.ebnf

testgui: 
	$(FREGE) $(MAIN) -gui $(Y) $(E)
