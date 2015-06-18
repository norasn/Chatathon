import {ObserverLocator} from "aurelia-framework";

export class Chat {

  static inject() { return [ObserverLocator]; }
  constructor(locator) {
    var that = this;
    locator.getObserver(this, 'input')
      .subscribe(newInput =>  that.performSearch());
  }

  searchData = [
    "Banana",
    "Apple",
    "Orange",
    "Kiwi"
  ];

  results = [];

  input = null;

  search(input, data){
    var results = [];
    for(var i=0; i < data.length; i++){
      if(data[i].includes(input)){
        results.push(data[i]);
      }
    }
    console.info("Input " + input);
    console.info("Data" + data);
    console.info(results);
    return results;
  }

  performSearch(){
     this.results = this.search(this.input, this.searchData);
  }
}
