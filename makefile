.PHONY: build
build: ## Run build command with build_runner script
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: clean-build
clean-build: ## Run build command with build_runner script
	flutter clean
	flutter pub get
	flutter packages pub get
	flutter packages pub run build_runner clean
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: run
run: ## Run NF dev app
	flutter run