import axios from 'axios'

// const base = `${process.env.API_HOST}/api/v1`
const base = 'http://localhost:3000/api/v1'

const API = axios.create({
  baseURL: base
})

export default API
