DEBUG=servicebus*
RABBITMQ_URL=amqp://localhost:5672

install-servicebus:
	npm i servicebus;

test: install-servicebus
	RABBITMQ_URL=$(RABBITMQ_URL) DEBUG= ./node_modules/.bin/mocha -R spec --recursive

test-debug: install-servicebus
	RABBITMQ_URL=$(RABBITMQ_URL) DEBUG=$(DEBUG) ./node_modules/.bin/mocha -R spec --recursive

.PHONY: test test-debug
