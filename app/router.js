'use strict';

module.exports = app => {
  const jwt = app.middlewares.jwt()
  app.post('/register', 'user.register');
  app.get('/login', 'user.login');
  app.post('/post/create', jwt, 'post.create');
  app.get('/post/query/:type/:page/:size', 'post.query');
  app.get('/post/query/:id', 'post.queryOne');
};
