# ===================
# i18next translation
# ===================

# Which translation files to convert from
# GNU gettext PO format into i18next JSON format
LANGUAGES = $(basename $(notdir $(wildcard po/*.po) ))

# Convert single translation file
po-to-json:
	@echo
	@echo ------------------------
	@echo Converting language \"$(lang)\"
	@echo ------------------------
	I18NEXT_LANG=$(lang) npx --yes i18next-conv -l $(I18NEXT_LANG) -s po/$(I18NEXT_LANG).po -t json/$(I18NEXT_LANG).json

# Convert all translation files
gettext-to-json:
	$(foreach language,$(LANGUAGES),make po-to-json lang=$(language);)
