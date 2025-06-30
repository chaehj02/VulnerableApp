# 1. Java 17 기반 이미지 사용
FROM eclipse-temurin:17-jdk-alpine

# 2. 작업 디렉토리 생성
WORKDIR /app

# 3. JAR 복사 (build/libs 폴더 기준, 이름은 실제 결과물에 맞게 조정)
COPY build/libs/VulnerableApp-*.jar app.jar

# 4. 포트 노출
EXPOSE 8080

# 5. JAR 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
