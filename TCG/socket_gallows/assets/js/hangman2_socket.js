import {Socket} from "phoenix"


export default class Hangman2Socket {

  constructor() {
    this.socket = new Socket("/socket", {})
    this.socket.connect()
    // console.dir(this.socket)
  }

  // connect_to_hangman2() {
  //   this.channel = this.socket.channel("hangman2:game", {})
  //   this.channel.join()
  // }
}
