OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml
REFERENCE_DOC=pandoc/templates/reference.docx

ifeq ($(OS),Windows_NT)
MKDIR_OUTPUT = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(OUTPUT_DIR)' | Out-Null"
RMDIR_OUTPUT = powershell -NoProfile -Command "Remove-Item -Recurse -Force -ErrorAction SilentlyContinue '$(OUTPUT_DIR)'"
else
MKDIR_OUTPUT = mkdir -p $(OUTPUT_DIR)
RMDIR_OUTPUT = rm -rf $(OUTPUT_DIR)
endif

PDF_FRONT = report/front-matter/00-cover-pandoc.md \
            report/front-matter/01-version-register.md \
            report/front-matter/02-collaboration-insights.md \
			report/front-matter/03-content.md \
            report/front-matter/04-student-outcome.md 
            


CHAPTERS = $(sort $(wildcard report/chapters/*/*.md))
BACK = $(sort $(wildcard report/back-matter/*.md))

PDF_FILES = $(PDF_FRONT) $(CHAPTERS) $(BACK)

PDF=$(OUTPUT_DIR)/upc-pre-202610-1asi0730-10215-ArcadiaDevs-report-avXtbX.pdf
DOCX=$(OUTPUT_DIR)/report.docx

all: pdf docx

pdf:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

docx:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) --reference-doc=$(REFERENCE_DOC) $(PDF_FILES) -o $(DOCX)

clean:
	$(RMDIR_OUTPUT)
