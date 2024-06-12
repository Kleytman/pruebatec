import { api } from 'lwc';
import LightningModal from 'lightning/modal';
import createTask from '@salesforce/apex/TaskController.createTask';
import { CloseActionScreenEvent } from 'lightning/actions';

export default class ModalTask extends LightningModal {
    @api recordId;

    handleSave() {
        const subject = this.template.querySelector("[data-id='subject']").value;
        const dueDate = this.template.querySelector("[data-id='dueDate']").value;

        createTask({ subject, whatId: this.recordId, dueDate})
            .then(() => {
                this.dispatchEvent(new CloseActionScreenEvent({ bubbles: true, composed: true }));
            })
            .catch(error => {
                console.error('Error creating task: ', error);
            });
    }

    handleCancel() {
        this.dispatchEvent(new CloseActionScreenEvent({ bubbles: true, composed: true }));
    }
}
