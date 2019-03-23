http = require('http')
fs = require('fs')

def = (req, res) ->
  console.log('URL page = ' + req.url)
  res.writeHead(200, {'Content-Type':'text/html; charset=utf-8'})
  myRead = fs.createReadStream(__dirname + '/index.html', 'utf8')
  myRead.pipe(res)
  return

server = http.createServer(def)
server.listen(3000, '127.0.0.1')
console.log('3k is used')