const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('Merhaba dünya! Bu image GitHub Actions ile DockerHub’a gönderildi 🚀')
})

const port = process.env.PORT || 3000
app.listen(port, () => {
  console.log(`Sunucu ${port} portunda çalışıyor`)
})
