.DEFAULT_GOAL=all
all: clean package
clean:
	if [ -a package2.exe ] ; \
	then \
		rm package2.exe ; \
	fi;
package: package2.c
	gcc -o package2 package2.c -I .
