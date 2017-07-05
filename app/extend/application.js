const jwt = require('jwt-simple')
const secret = '123456'

module.exports = {
  createJwt(user) {
    var expires = new Date().getTime() + 1000 * 60 * 60 * 24 * 7;
    user.token = jwt.encode({
      iss: user.id,
      exp: expires
    }, secret)
    user.expires = expires

    return user
  }
};
