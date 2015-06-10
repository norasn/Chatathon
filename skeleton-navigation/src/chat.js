
export class Chat {
  title = "Chatathon!!!!!";
  
  firstName = "Nadav";
  lastName = "Greenspan";

  chat = null;

  constructor() {
    this.chat = this;
  }

  get otherTitle() {
    return `${this.firstName} ${this.lastName}`;
  }

  showOther = true;
  toggle() {
    this.showOther = !this.showOther;
  }
}
