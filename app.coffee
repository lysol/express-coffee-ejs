express = require 'express'
app = module.exports = express.createServer()

# Setup Template Engine
app.set 'view engine', 'ejs'

app.set 'views', __dirname + '/views'
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.cookieParser()
app.use app.router

# Setup Static Files
app.use express.static __dirname + '/public'

# App Routes
app.get '/', (request, response) ->
  response.render 'index'

# Listen
app.listen 3000
console.log "Listening on port 3000."