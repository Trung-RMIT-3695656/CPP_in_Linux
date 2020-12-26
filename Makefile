.PHONY: clean All

All:
	@echo "----------Building project:[ DesignPatterns - Debug ]----------"
	@cd "DesignPatterns" && "$(MAKE)" -f  "DesignPatterns.mk"
clean:
	@echo "----------Cleaning project:[ DesignPatterns - Debug ]----------"
	@cd "DesignPatterns" && "$(MAKE)" -f  "DesignPatterns.mk" clean
