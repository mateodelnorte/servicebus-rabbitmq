require('longjohn');

if ( ! process.env.RABBITMQ_URL)
  throw new Error('Tests require a RABBITMQ_URL environment constiable to be set, pointing to the RabbiqMQ instance you wish to use. Example url: "amqp://localhost:5672"');

const busUrl = process.env.RABBITMQ_URL;

const options = {
  prefetch: 5,
  url: busUrl
};

module.exports.bus = require('servicebus').bus(options);
