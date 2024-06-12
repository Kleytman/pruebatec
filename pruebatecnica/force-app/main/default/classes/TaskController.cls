public class TaskController {
    @AuraEnabled
    public static void createTask(String subject, String whatId, Date dueDate) {
        Task newTask = new Task();
        newTask.Subject = subject;
        newTask.WhatId = whatId;
        newTask.ActivityDate = dueDate;
        insert newTask;
    }
}
