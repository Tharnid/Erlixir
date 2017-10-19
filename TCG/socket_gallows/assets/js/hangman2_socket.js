import {Socket} from "phoenix"
export default class Hangman2Socket {
  constructor() {
    this.socket = new Socket("/socket", {})
    this.socket.connect()
    // console.dir(this.socket)
  }
}
