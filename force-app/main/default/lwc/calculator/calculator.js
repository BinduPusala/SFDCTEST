import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    num1;
    num2;
    onchangehandleevent(event){
        const name=event.target.name;
        const value=event.target.value;
        if(name === 'num1'){
            this.num1 = value;
        }else{
            this.num2 = value;
        }
    }
    sum(){
        const varsum = parseInt(this.num1) + parseInt(this.num2);
        alert(varsum);
    }
    sub(){
        const varsub = parseInt(this.num1) - parseInt(this.num2);
        alert(varsub);
    }
    mul(){
        const varmul = parseInt(this.num1) * parseInt(this.num2);
        alert(varmul);
    }
    div(){
        const vardiv = parseInt(this.num1) / parseInt(this.num2);
        alert(vardiv);
    }

}