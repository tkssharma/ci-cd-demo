module.exports = {
  apps: [
    {
      name: 'api_server',
      script: './node_modules/.bin/ts-node --files -r tsconfig-paths/register ./src',
      instances: 1,
      env: {
        NODE_ENV: process.env.NODE_ENV,
        PORT: process.env.PORT
      },
      listen_timeout: 50000,
      kill_timeout: 15000
    }
  ]
};

