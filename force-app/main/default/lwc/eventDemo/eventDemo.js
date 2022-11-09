import { LightningElement } from 'lwc';

export default class EventDemo extends LightningElement {
message="Html class";
handlechange(event){
    const value = event.target.value;
    const label = event.target.label;
}
}