FROM docker.io/library/rabbitmq:3.8-management

ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=admin

# 更新源
RUN apt-get update;
RUN apt-get install -y wget;

RUN cd /plugins; \
    wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez;

# 基础镜像 rabbitmq:3.8-management 已包含了端口暴露
#EXPOSE 5672
#EXPOSE 15672

CMD ["rabbitmq-server"]