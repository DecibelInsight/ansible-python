#
# Makefile
# mchristof, 2016-10-03 13:22
#

default: up

up:
	vagrant up

clean:
	vagrant destroy -f

provision:
	vagrant provision

all:
	@echo "Makefile needs your attention"


# vim:ft=make
#
