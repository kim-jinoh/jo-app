.PHONY: help run test clean build db-up db-down db-logs

help:
	@echo "Usage:"
	@echo "  make run    # Spring Boot 실행 (bootRun)"
	@echo "  make test   # 테스트 실행"
	@echo "  make build  # 빌드"
	@echo "  make clean  # 클린"
	@echo "  make db-up  # PostgreSQL(Docker) 실행"
	@echo "  make db-down# PostgreSQL(Docker) 종료"
	@echo "  make db-logs# PostgreSQL(Docker) 로그"

run:
	./gradlew bootRun

test:
	./gradlew test

build:
	./gradlew build

clean:
	./gradlew clean

db-up:
	docker compose up -d postgres

db-down:
	docker compose down

db-logs:
	docker compose logs -f postgres


