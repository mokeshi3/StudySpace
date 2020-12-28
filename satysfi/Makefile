OUTPUT_DIR = "./pdf"
target: $(SATY)
	satysfi -o $(OUTPUT_DIR)/$(notdir $(basename $(SATY))).pdf $(SATY)
	rm $(dir $(SATY))/*-aux

clean-all:
	rm $(OUTPUT_DIR)/*.pdf
