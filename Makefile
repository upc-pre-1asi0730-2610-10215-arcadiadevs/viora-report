OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml
REFERENCE_DOC=pandoc/templates/reference.docx

# ---------------------------------------------------------------------------
# Shell detection for Windows-native GNU Make (installed via Scoop)
# Scoop sets the SCOOP env var automatically (e.g. C:\Users\<you>\scoop).
# On Unix/macOS the default /bin/sh is used automatically.
# ---------------------------------------------------------------------------
ifeq ($(OS),Windows_NT)
SCOOP ?= $(USERPROFILE)/scoop
SHELL = $(subst \,/,$(SCOOP))/apps/git/current/usr/bin/sh.exe
endif

# PlantUML config — set JAVA_HOME to your local JDK path if needed
JAVA_HOME ?= $(USERPROFILE)/.jdks/openjdk-26.0.1
PLANTUML_JAR = lib/plantuml.jar
PUML_SOURCES = $(wildcard report/assets/diagram-sources/class-diagrams/*.puml)
DIAGRAM_OUT = report/assets/class-diagrams

ifeq ($(OS),Windows_NT)
MKDIR_OUTPUT = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(OUTPUT_DIR)' | Out-Null"
MKDIR_DIAGRAMS = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(DIAGRAM_OUT)' | Out-Null"
RMDIR_OUTPUT = powershell -NoProfile -Command "Remove-Item -Recurse -Force -ErrorAction SilentlyContinue '$(OUTPUT_DIR)'"
else
MKDIR_OUTPUT = mkdir -p $(OUTPUT_DIR)
MKDIR_DIAGRAMS = mkdir -p $(DIAGRAM_OUT)
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

diagrams:
	@echo Generating diagrams from PlantUML sources...
	$(MKDIR_DIAGRAMS)
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(DIAGRAM_OUT))" $(PUML_SOURCES)
	@echo Done. $(words $(PUML_SOURCES)) diagrams generated.

pdf: diagrams
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

docx:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) --reference-doc=$(REFERENCE_DOC) $(PDF_FILES) -o $(DOCX)

clean:
	$(RMDIR_OUTPUT)
