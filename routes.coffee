express = require('express')
app = module.exports = express.createServer()

app.configure ->
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

app.configure 'development', ->
  app.use express.errorHandler(dumpExceptions:true, showStack:true) 

app.configure 'production', ->
  app.use express.errorHandler()

app.get '/', (req, res) -> res.redirect 'http://brian.io'
app.get '/slides/:deck', (req, res) -> res.redirect "http://brian.io/slides/#{ req.params.deck }"
app.get '/slides', (req, res) -> res.redirect 'http://brian.io/slides/'

app.listen process.env.PORT || 3000
