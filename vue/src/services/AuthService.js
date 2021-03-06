import axios from 'axios';

export default {

  login(user) {
    return axios.post('/login', user)
  },

  register(user) {
    return axios.post('/register', user)
  },

  changePassword(newPassword) {
    return axios.put('/user/change-password', newPassword)
  }

}
