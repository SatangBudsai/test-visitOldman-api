require('dotenv').config();
import { PrismaClient } from '@prisma/client'
import { request } from 'http';
const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());
app.use(morgan('tiny'));

const prisma = new PrismaClient()

// const person = request("../routes/person.ts")

// app.use('/person', person);
app.get('/', async (req, res) => {
  // const filterPerson = req.body;
  const filterPerson = req.query;
  const getPerson = await prisma.person.findMany({
    where: {
      citizenId: filterPerson.citizenId,
      Fname: filterPerson.Fname,
      Lname: filterPerson.Lname,
    },
  })
  // res.status(200).send("ok");
  res.json(getPerson)
})

app.listen(process.env.PORT, () => {
  console.log('Listening on port 8000');
});