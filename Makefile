PS2PDF=/usr/local/bin/ps2pdf
CAT=/bin/cat
HEADER=header.ps
BIKEDRAW=bikedraw.ps

target: $(BIKE).ps $(HEADER) $(BIKEDRAW)
ifdef BIKE
	$(CAT) $(HEADER) $(BIKE).ps $(BIKEDRAW) | $(PS2PDF) - $(BIKE).pdf
else
	@echo "Usage: \"make BIKE=<bikefile> and leave off the .ps\""
endif

$(BIKE).ps:
	@echo ""
