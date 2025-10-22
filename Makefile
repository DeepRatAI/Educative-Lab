.PHONY: setup test html clean help

help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

setup: ## Install dependencies
	@echo "Creating virtual environment and installing dependencies..."
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt
	@echo "Setup complete! Activate with: source .venv/bin/activate"

test: ## Validate notebook structure
	@echo "Validating notebooks (Colab-specific, not executed locally)..."
	@mkdir -p build/html
	@if [ -f lessons/01_yolov8_intro/Yolov8_Detector.ipynb ]; then \
		echo "Validating lessons/01_yolov8_intro/Yolov8_Detector.ipynb..."; \
		jupyter nbconvert --to notebook \
			--output-dir=build/html \
			lessons/01_yolov8_intro/Yolov8_Detector.ipynb; \
		echo "✅ Notebook structure validated!"; \
		echo "ℹ️  Note: Execute this notebook in Google Colab for full functionality"; \
	else \
		echo "No notebook found in lessons/01_yolov8_intro/"; \
	fi

html: ## Export notebooks to HTML
	@echo "Exporting notebooks to HTML..."
	@mkdir -p build/html
	@if [ -f lessons/01_yolov8_intro/Yolov8_Detector.ipynb ]; then \
		echo "Converting lessons/01_yolov8_intro/Yolov8_Detector.ipynb to HTML..."; \
		jupyter nbconvert --to html \
			--output-dir=build/html \
			lessons/01_yolov8_intro/Yolov8_Detector.ipynb; \
		echo "HTML export completed!"; \
	else \
		echo "No notebook found in lessons/01_yolov8_intro/"; \
	fi

clean: ## Clean build artifacts
	@echo "Cleaning build artifacts..."
	rm -rf build/
	rm -rf .ipynb_checkpoints/
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete
	@echo "Clean complete!"
