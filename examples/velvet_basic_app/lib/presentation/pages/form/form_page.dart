import 'package:flutter/material.dart';
import 'package:velvet_basic_app/presentation/pages/form/hooks/use_email_input.dart';
import 'package:velvet_basic_app/presentation/pages/form/hooks/use_name_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormPage extends HookConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nameInput = useNameInput();
    var emailInput = useEmailInput();

    var form = useForm(
      {
        'name': nameInput,
        'email': emailInput,
      },
      (inputs) async {
        throw const FormatException('Invalid format');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('pages.form.title')),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                focusNode: nameInput.focusNode,
                controller: nameInput.controller,
                decoration: InputDecoration(
                  errorText: nameInput.error.value,
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                focusNode: emailInput.focusNode,
                controller: emailInput.controller,
                decoration: InputDecoration(
                  errorText: emailInput.error.value,
                  labelText: 'Email',
                ),
              ),
              ElevatedButton(
                onPressed: form.submit,
                child: Text(context.translate('pages.form.submit')),
              ),
              Text(
                form.isSubmitting.value
                    ? context.translate('pages.form.is_submitting')
                    : '',
              ),
              Text(
                form.isValid.value
                    ? ''
                    : context.translate('pages.form.is_invalid'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
