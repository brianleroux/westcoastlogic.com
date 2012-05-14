app = module.exports = require './config'

app.get '/', (req, res) -> res.redirect 'http://brian.io'
app.get '/slides/:deck', (req, res) -> res.redirect "http://brian.io/slides/#{ req.params.deck }"

app.listen process.env.PORT || 3000
