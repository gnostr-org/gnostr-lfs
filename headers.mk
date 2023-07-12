headers:
	@bash -c "ls -m **.js"
	@bash -c "ls -m **.h"
	@bash -c "for f in *.js; \
		echo "${f}"; \
		do jsmin<${f} >${f}.h; \
		done;"
