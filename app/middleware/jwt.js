const jwt = require('jwt-simple')
const secret = '123456'

module.exports = options => {
  return async function validToken (ctx, next) {
    let token = ctx.request.header.token
    if (token) {
      try {
        var decoded = jwt.decode(token, secret)
        if (decoded.exp <= new Date().getTime()) {
          ctx.status = 401
          ctx.body = {retCode: 401, retMessage: 'token已过期'}
          return
        } else {
          ctx.request.body = await ctx.service.user.find(decoded.iss)
          await next()
        }
      } catch (e) {
        ctx.status = 401
        ctx.body = {retCode: 401, retMessage: 'token无效', error: e}
      }
    } else {
      ctx.status = 401
      ctx.body = {retCode: 401, retMessage: 'token不能为空'}
    }
  };
};
