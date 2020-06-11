const express = require('express')
const pool = require('./db')

const app = express()

app.get('/monsters', (request, response) => {
  pool.query('SELECT * FROM monsters ORDER BY id ASC', (err, res) => {
    if (err) console.log(err)
    response.json(res.rows)
  })
})

module.exports = app  