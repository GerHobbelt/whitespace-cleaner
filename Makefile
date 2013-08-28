# This file is part of the WhiteSpace Cleaner project, https://github.com/GerHobbelt/whitespace-cleaner

# Copyright (c) 2012, Ger Hobbelt
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

# "Machine-dependant" options
MCFLAGS=-fPIC
MLFLAGS=

MFLAGS=
#MFLAGS=-m32 -mmacosx-version-min=10.5 --sysroot /Developer/SDKs/MacOSX10.5.sdk

CFLAGS=-c -g -O3 -Wall -Wsign-compare -Isrc $(MCFLAGS) $(MFLAGS)
LDFLAGS=-g -O3 -Wall $(MLFLAGS) $(MFLAGS)
CC=gcc


WSCLEAN_SRC=\
	src/getopts.o \
	src/wsclean.o

all:        wsclean

.PHONY:     all clean

# executables

wsclean:    $(WSCLEAN_SRC)
	$(CC) $(LDFLAGS) $^ -o $@

# housekeeping

clean:
	rm -f src/*.o
	rm -f wsclean
	rm -f wsclean.exe

# dependencies

src/getopts.o: src/getopts.c src/getopts.h

src/wsclean.o: src/wsclean.c src/getopts.h


# generic object compilations

src/%.o:    src/%.c
	$(CC) $(CFLAGS) -o $@ $<

