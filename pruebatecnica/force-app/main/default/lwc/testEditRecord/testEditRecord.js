import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class TestEditRecord extends LightningElement {

    @api recordId;

    handleSuccess(){
        const event = new ShowToastEvent({
            title: 'Completado',
            message: 'Registro guardado',
        });
        this.dispatchEvent(event);
    }

}