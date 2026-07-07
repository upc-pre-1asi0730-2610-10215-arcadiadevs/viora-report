OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml

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

DIAGRAM_PNGS = $(patsubst report/assets/diagram-sources/class-diagrams/%.puml,$(DIAGRAM_OUT)/%.png,$(PUML_SOURCES))

# ─── Default target ──────────────────────────────────────────────────────────
.DEFAULT_GOAL := help
.PHONY: report c4-diagrams clean help pdf all

# ─── Primary targets ─────────────────────────────────────────────────────────
report: $(PDF)

$(PDF): $(PDF_FILES) $(DIAGRAM_PNGS) | $(OUTPUT_DIR)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

c4-diagrams: $(DIAGRAM_PNGS)
	@echo Diagrams up to date: $(words $(DIAGRAM_PNGS)) total.

# One PNG per .puml — only regenerates the ones whose source changed.
$(DIAGRAM_OUT)/%.png: report/assets/diagram-sources/class-diagrams/%.puml | $(DIAGRAM_OUT)
	@echo Generating diagram: $*...
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(DIAGRAM_OUT))" $<

$(OUTPUT_DIR):
	$(MKDIR_OUTPUT)

$(DIAGRAM_OUT):
	$(MKDIR_DIAGRAMS)

clean:
	$(RMDIR_OUTPUT)

# ─── Help ────────────────────────────────────────────────────────────────────
help:
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  report       Generate the full PDF report"
	@echo "  c4-diagrams  Regenerate PlantUML C4 diagrams only"
	@echo "  clean        Remove the build/ directory"
	@echo "  help         Show this help message"
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
