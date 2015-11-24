LIBDIR=lib
OUTDIR=out
SRCS=$(wildcard $(LIBDIR)/*.ex)

.PHONY: all

all:
	elixirc -o $(OUTDIR) $(LIBDIR)
