({
    handleSubmit: function(component, event, helper) {
        component.set('v.spinner', true);
        event.preventDefault();       // stop the form from submitting
        
        var fields = event.getParam('fields');
        
        component.find('recordEditForm').submit(fields);
        
    },
    handleSuccess: function(component, event, helper) {
        component.set('v.spinner', false);
        helper.showToast("success", "Agora Sim");
    }
})
