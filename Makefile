OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml
REFERENCE_DOC=pandoc/templates/reference.docx

PDF_FRONT = report/front-matter/00-cover-pandoc.md \
            report/front-matter/01-version-register.md \
            report/front-matter/02-collaboration-insights.md \
            report/front-matter/03-student-outcome.md \
            report/front-matter/04-toc.md


CHAPTERS = $(sort $(wildcard report/chapters/*/*.md))
BACK = $(sort $(wildcard report/back-matter/*.md))

PDF_FILES = $(PDF_FRONT) $(CHAPTERS) $(BACK)

PDF=$(OUTPUT_DIR)/report-pandoc-AW.pdf
DOCX=$(OUTPUT_DIR)/report.docx

all: pdf docx

pdf:
	if not exist $(OUTPUT_DIR) mkdir $(OUTPUT_DIR)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

docx:
	if not exist $(OUTPUT_DIR) mkdir $(OUTPUT_DIR)
	pandoc --defaults=$(PDF_DEFAULTS) --reference-doc=$(REFERENCE_DOC) $(PDF_FILES) -o $(DOCX)

clean:
	if exist $(OUTPUT_DIR) rmdir /s /q $(OUTPUT_DIR)

rebuild: clean all