FROM flink:1.9.0-scala_2.12
ARG hadoop_jar
ARG prometheus_jar
COPY --chown=flink:flink $prometheus_jar $FLINK_HOME/lib/
COPY --chown=flink:flink $hadoop_jar $FLINK_HOME/lib/
USER flink