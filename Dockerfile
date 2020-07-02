FROM maven
COPY . .
RUN mvn clean package -Pjar


FROM java
COPY --from=0 pcws.jar .
CMD ["./app"]  
