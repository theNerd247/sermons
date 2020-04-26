.PHONY: all mvc

srcs=$(wildcard mvc/*.md)
bin=./docs
htmls := $(addprefix $(bin)/,$(srcs:%.md=%.html))

all: mvc $(bin) $(htmls)

mvc:
	mkdir -p $(bin)/mvc

$(bin):
	mkdir -p $(bin)

$(bin)/%.html: %.md $(bin)
	pandoc -s -o $@ $<
