OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml

# PlantUML config — set JAVA_HOME to your local JDK path if needed
JAVA_HOME ?= $(USERPROFILE)/.jdks/openjdk-26.0.1
PLANTUML_JAR = lib/plantuml.jar
CLASS_SOURCES = $(wildcard report/assets/diagram-sources/class-diagrams/*.puml)
CLASS_OUT = report/assets/class-diagrams
C4_SOURCES = $(wildcard report/assets/diagram-sources/c4/*.puml)
C4_OUT = report/assets/design-level-eventstorming/c4-diagrams

ifeq ($(OS),Windows_NT)
MKDIR_OUTPUT = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(OUTPUT_DIR)' | Out-Null"
MKDIR_CLASS = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(CLASS_OUT)' | Out-Null"
MKDIR_C4 = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(C4_OUT)' | Out-Null"
RMDIR_OUTPUT = powershell -NoProfile -Command "Remove-Item -Recurse -Force -ErrorAction SilentlyContinue '$(OUTPUT_DIR)'"
else
MKDIR_OUTPUT = mkdir -p $(OUTPUT_DIR)
MKDIR_CLASS = mkdir -p $(CLASS_OUT)
MKDIR_C4 = mkdir -p $(C4_OUT)
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

CLASS_PNGS = $(patsubst report/assets/diagram-sources/class-diagrams/%.puml,$(CLASS_OUT)/%.png,$(CLASS_SOURCES))
C4_PNGS = $(patsubst report/assets/diagram-sources/c4/%.puml,$(C4_OUT)/%.png,$(C4_SOURCES))

# ─── Default target ──────────────────────────────────────────────────────────
.DEFAULT_GOAL := help
.PHONY: report c4-diagrams class-diagrams clean help pdf all

# ─── Primary targets ─────────────────────────────────────────────────────────
report: $(PDF)

$(PDF): $(PDF_FILES) $(CLASS_PNGS) $(C4_PNGS) | $(OUTPUT_DIR)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

c4-diagrams: $(C4_PNGS)
	@echo C4 Diagrams up to date: $(words $(C4_PNGS)) total.

class-diagrams: $(CLASS_PNGS)
	@echo Class Diagrams up to date: $(words $(CLASS_PNGS)) total.

# Compilation rules
$(CLASS_OUT)/%.png: report/assets/diagram-sources/class-diagrams/%.puml | $(CLASS_OUT)
	@echo Generating class diagram: $*...
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(CLASS_OUT))" $<

$(C4_OUT)/%.png: report/assets/diagram-sources/c4/%.puml | $(C4_OUT)
	@echo Generating C4 diagram: $*...
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(C4_OUT))" $<

$(OUTPUT_DIR):
	$(MKDIR_OUTPUT)

$(CLASS_OUT):
	$(MKDIR_CLASS)

$(C4_OUT):
	$(MKDIR_C4)

clean:
	$(RMDIR_OUTPUT)

# ─── Help ────────────────────────────────────────────────────────────────────
help:
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  report          Generate the full PDF report"
	@echo "  c4-diagrams     Regenerate C4 diagrams from PlantUML source"
	@echo "  class-diagrams  Regenerate class diagrams only"
	@echo "  clean           Remove the build/ directory"
	@echo "  help            Show this help message"
	@echo ""

# ─── Legacy targets (redirect to help) ───────────────────────────────────────
pdf:
	@echo ""
	@echo "[INFO] 'make pdf' has been replaced by 'make report'."
	@echo "Run 'make help' to see all available targets."
	@echo ""

all:
	@echo ""
	@echo "[INFO] 'make all' has been replaced by 'make report'."
	@echo "Run 'make help' to see all available targets."
	@echo ""
