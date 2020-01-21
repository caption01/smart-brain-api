const redisClient = require('./signin').redisClient

const requireAuth = (req, res, next) => {

    const { authorization } = req.headers;

    if (!authorization) {
        return res.status(401).json('un-authorized')
    }
    return redisClient.get(authorization, (err, reply) => {
        if (err || !reply) {
            return res.status(401).json('err and reply')
        }
        console.log('you shall pass')
        return next()
    })
}

module.exports = {
    requireAuth: requireAuth
}
