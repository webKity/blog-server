module.exports = app => {
  class UserService extends app.Service {
    async register(params) {
      try {
        let ctx = this.ctx
        let data = {}
        let isUserExistence = (await ctx.service.user.find({account: params.account})).length > 0
        if (!isUserExistence) {
          data = await app.mysql.insert('user', params)
        } else {
          data.error = '邮箱已存在'
        }
        return data
      } catch (e) {
        return {error: e}
        throw e
      }
    }
    async find (params) {
      try {
        let data = {}
        data = await app.mysql.select('user', {
          where: params,
          columns: ['id', 'headUrl', 'name', 'point', 'sign', 'address', 'website']
        })
        if (data.length <= 0) {
          data.error = '用户名或密码错误'
        }
        return data
      } catch (e) {
        return {error: e}
        throw e
      }
    }
  }
  return UserService;
};
