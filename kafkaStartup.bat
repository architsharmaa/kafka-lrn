:: basic kafka startup script/batch file to start servers and a consumer and producer - archit sharma
cd /D "C:\kafka\bin\windows\"
start cmd /k call zookeeper-server-start.bat C:\kafka\config\zookeeper.properties

start cmd /k call kafka-server-start.bat C:\kafka\config\server.properties

start cmd /k call kafka-console-producer.bat --broker-list localhost:9092 --topic TestTopic

start cmd /k call kafka-console-consumer.bat --topic TestTopic --bootstrap-server localhost:9092 --from-beginning
