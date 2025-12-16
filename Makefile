.PHONY: help run test clean build

help:
	@echo "Usage:"
	@echo "  make run    # Spring Boot 실행 (bootRun)"
	@echo "  make test   # 테스트 실행"
	@echo "  make build  # 빌드"
	@echo "  make clean  # 클린"

run:
	./gradlew bootRun

test:
	./gradlew test

build:
	./gradlew build

clean:
	./gradlew clean


