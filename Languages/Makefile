DIR_NAME := $(shell date +'%Y-%m')
YMD_DATE_FORMAT := $(shell date +'%Y-%m-%d')
ZH_DATE_FORMAT := $(shell date +'%Y年%m月%d日')
FILE_NAME := $(YMD_DATE_FORMAT).md
FRENCH_DIR_PATH:=French/$(DIR_NAME)
CHINESE_DIR_PATH:=Chinese/$(DIR_NAME)
FRENCH_FILE_PATH:=$(FRENCH_DIR_PATH)/$(FILE_NAME)
CHINESE_FILE_PATH:=$(CHINESE_DIR_PATH)/$(FILE_NAME)
# TODO: Automate this template do get its content from a french_template.md file
FRENCH_TEMPLATE:="--- \ndate: $(shell date) \nname: Cristóvão Olegário\n--- \n\n\# $(shell date +'%A, %d %B %Y')\n\nlorem ipsum blablabla stuff\n\n\#\# Notes about the lesson\n\n- 1 - Subject + Verb + Object => Most pharses will follow this structure\n\n\#\# Vocabulary\n\n| French | Meaning |\n| ------ | ------- |\n| Bonjour | Good morning |\n\n\#\# Revision vocabulary\n\n| French | Context | Did I hit? |\n| ---- | ------- | ---------- |\n|      |         | ✅ ❌      |"
CHINESE_TEMPLATE:="--- \ndate: $(shell date) \nname: Cristóvão Olegário - 克里思\n--- \n\n\# $(shell date +'%A, %d %B %Y')\n\nlorem ipsum blablabla stuff\n\n\#\# Notes about the lesson\n\n- 1 - Subject + Verb + Object => Most pharses will follow this structure\n\n\#\# Vocabulary\n\n| 汉子 | Pin yin | Meaning |\n| ---- | ------- | ------- |\n| 你好 | nǐ hǎo  | Hello   |\n|      |         |         |\n\n\#\# Revision vocabulary\n\n| 汉子 | Context | Did I hit? |\n| ---- | ------- | ---------- |\n|      |         | ✅ ❌      |"


french-note: 
	@mkdir -p $(FRENCH_DIR_PATH) 
	@echo $(FRENCH_TEMPLATE) >> $(FRENCH_FILE_PATH) 
	@echo 'French note $(FILE_NAME) created'
	@code ./$(FRENCH_FILE_PATH)

chinese-note:
	@mkdir -p $(CHINESE_DIR_PATH) 
	@echo $(CHINESE_TEMPLATE) >> $(CHINESE_FILE_PATH) 
	@echo 'Chinese note $(FILE_NAME) created'
	@code ./$(CHINESE_FILE_PATH)

commit-french-note:
	@git add ./$(FRENCH_DIR_PATH)
	@git commit -m "$(YMD_DATE_FORMAT) - add french lesson notes"

commit-chinese-note:
	@git add ./$(CHINESE_DIR_PATH)
	@git commit -m "$(ZH_DATE_FORMAT) - 中文课笔记"
