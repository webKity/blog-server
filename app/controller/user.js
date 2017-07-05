'use strict';

module.exports = app => {
  class UserController extends app.Controller {
    async register () {
      let ctx = this.ctx
      let params = {}
      params.name = ctx.query.name
      params.account = ctx.query.account
      params.password = ctx.query.password
      params.create_time = new Date().getTime()
      params.update_time = new Date().getTime()

      try {
        if (typeof params.name === 'undefined' || params.name === '') {
         ctx.status = 400
         ctx.body = {retCode: 400, retMessage: '账号邮箱不能为空'}
        } else if (typeof params.account === 'undefined' || params.account === '') {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '账号不能为空'}
        } else if (typeof params.password === 'undefined' || params.password === '') {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '密码不能为空'}
        } else {
          let data = await ctx.service.user.register(params)
          if (!data.error) {
            ctx.body = {retCode: 200, retMessage: '注册成功'}
          } else {
            ctx.status = 400
            ctx.body = {retCode: 400, retMessage: '注册失败', error: data.error}
          }
        }
      } catch (e) {
        ctx.status = 500
        ctx.body = {retCode: 500, retMessage: '注册失败', error: e}
        throw(e)
      }
    }
    async login () {
      let ctx = this.ctx
      let params = {}
      params.account = ctx.query.account
      params.password = ctx.query.password
      try {
        if (typeof params.account === 'undefined' || params.account === '') {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '账号不能为空'}
        } else if (typeof params.password === 'undefined' || params.password === '') {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '密码不能为空'}
        } else {
          let data = await ctx.service.user.find(params)
          if (data.length > 0 && typeof data.error === 'undefined') {
            ctx.body = {retCode: 200, retMessage: '登录成功', result: app.createJwt(data[0])}
          } else {
            ctx.status = 400
            ctx.body = {retCode: 400, retMessage: '登录失败', error: data.error}
          }
        }
      } catch (e) {
        ctx.status = 500
        ctx.body = {retCode: 500, retMessage: '登录失败', error: e}
        throw(e)
      }
    }
  }
  return UserController;
};
