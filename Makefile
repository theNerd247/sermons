.PHONY: all mvc

srcs=$(wildcard mvc/*.md)
bin=./bin
pdfs := $(addprefix $(bin)/,$(srcs:%.md=%.pdf))

all: mvc $(bin) $(pdfs)

mvc:
	mkdir -p $(bin)/mvc

$(bin):
	mkdir -p $(bin)

$(bin)/%.pdf: %.md $(bin)
	pandoc -s -o $@ $<
