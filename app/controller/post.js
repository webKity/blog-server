'use strict';

module.exports = app => {
  class PostController extends app.Controller {
    async create () {
      let ctx = this.ctx
      let user = ctx.request.body[0]
      let params = {}
      params.title = ctx.query.title
      params.content = ctx.query.content
      params.type = Number(ctx.query.type)
      params.create_time = new Date().getTime()
      params.updata_time = new Date().getTime()
      params.author = user.id
      params.see = 0
      params.like = 0
      try {
        let data = await ctx.service.post.create(params)
        if (data.affectedRows === 1 && typeof data.error === 'undefined') {
          ctx.body = {retCode: 200, retMessage: '发布成功'}
        } else {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '发布失败', error: data.error}
        }
      } catch (e) {
        ctx.status = 500
        ctx.body = {retCode: 500, retMessage: '发布失败', error: e}
        throw(e)
      }
    }
    async query () {
      let ctx = this.ctx
      let params = {}
      params.type = Number(ctx.params.type)
      params.page = Number(ctx.params.page)
      params.size = Number(ctx.params.size)
      try {
        let data = await ctx.service.post.query(params)
        if (data.result.length > 0 && typeof data.error === 'undefined') {
          ctx.body = {retCode: 200, retMessage: '获取博客列表成功', result: data.result, totle: data.totle}
        } else {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '获取博客列表失败', error: data.error}
        }
      } catch (e) {
        ctx.status = 500
        ctx.body = {retCode: 500, retMessage: '获取博客列表失败', error: e}
        throw(e)
      }
    }
    async queryOne () {
      let ctx = this.ctx
      let params = {}
      params.id = Number(ctx.params.id)
      try {
        let data = await ctx.service.post.queryOne(params)
        if (data.result && typeof data.error === 'undefined') {
          ctx.body = {retCode: 200, retMessage: '获取博客详情成功', result: data.result}
        } else {
          ctx.status = 400
          ctx.body = {retCode: 400, retMessage: '获取博客详情失败', error: data.error}
        }
      } catch (e) {
        ctx.status = 500
        ctx.body = {retCode: 500, retMessage: '获取博客详情失败', error: e}
        throw(e)
      }
    }
  }
  return PostController;
};
