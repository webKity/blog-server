module.exports = app => {
  class PostService extends app.Service {
    async create(params) {
      try {
        let data = await app.mysql.insert('blog', params)
        return data
      } catch (e) {
        return {error: e}
        throw e
      }
    }
    async query (params) {
      try {
        let ctx = this.ctx
        let data = {}
        if (params.type === -1) {
          data.totle = (await app.mysql.select('blog', {})).length
          data.result = await app.mysql.select('blog', {
            columns: ['id', 'title', 'create_time', 'updata_time', 'author', 'see', 'like'],
            limit: params.size,
            offset: params.size * (params.page - 1),
            orders: [['create_time','desc']], // 排序方式
          })
        } else {
          data.totle = (await app.mysql.select('blog', {
            where: {type: params.type}
          })).length
          data.result = await app.mysql.select('blog', {
            where: {type: params.type},
            columns: ['id', 'title', 'create_time', 'updata_time', 'author', 'see', 'like'],
            limit: params.size,
            offset: params.size * (params.page - 1),
            orders: [['create_time','desc']], // 排序方式
          })
        }
        for (let i = 0, len = data.result.length; i < len; i++) {
          let author = await ctx.service.user.find({id: data.result[i].author})
          data.result[i] = Object.assign({}, author[0], data.result[i]);
        }
        return data
      } catch (e) {
        return {error: e}
        throw e
      }
    }
    async queryOne (params) {
      const conn = await app.mysql.beginTransaction();
      try {
        let data = {}
        let blog = (await app.mysql.select('blog', {where: params}))[0]
        let blogAuthor = (await app.mysql.select('user', {where: {id: blog.author}}))[0]
        Object.assign(blog, blogAuthor)
        let comment = await app.mysql.select('comment', {where: {blog_id: blog.id}})
        data.result = {}
        data.result.blog = blog
        data.result.comment = comment
        await conn.commit()
        return data
      } catch (e) {
        await conn.rollback()
        throw e
        return {error: e}
      }
    }
  }
  return PostService;
};
