app = module.exports = require './config'

app.get '/', (req, res) -> 
  res.render 'index'

app.get '/slides/*', (req, res) -> 
  res.redirect 'http://brian.io/slides/'

app.listen process.env.PORT || 3000
