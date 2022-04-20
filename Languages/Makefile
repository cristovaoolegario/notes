DIR_NAME := $(shell date +'%Y-%m')
FILE_NAME := $(shell date +'%Y-%m-%d').md
FRENCH_DIR_PATH:=French/$(DIR_NAME)
FRENCH_FILE_PATH:=$(FRENCH_DIR_PATH)/$(FILE_NAME)
# TODO: Automate this template do get its content from a french_template.md file
FRENCH_TEMPLATE:="--- \ndate: $(shell date) \nname: Cristóvão Olegário\n--- \n\n\# $(shell date +'%A, %d %B %Y')\n\nlorem ipsum blablabla stuff\n\n\#\# Notes about the lesson\n\n- 1 - Subject + Verb + Object => Most pharses will follow this structure\n\n\#\# Vocabulary\n\n| French | Meaning |\n| ------ | ------- |\n| Bonjour | Good morning |\n\n\#\# Revision vocabulary\n\n| French | Context | Did I hit? |\n| ---- | ------- | ---------- |\n|      |         | ✅ ❌      |"

french-note: 
	@mkdir -p $(FRENCH_DIR_PATH) 
	@echo $(FRENCH_TEMPLATE) >> $(FRENCH_FILE_PATH) 
	@echo 'French note $(FILE_NAME) created'
	@code ./$(FRENCH_FILE_PATH)