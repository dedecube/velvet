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
      [nameInput, emailInput],
      () async {
        talkerGlobalInstance.info(nameInput.value);
        talkerGlobalInstance.info(nameInput.controller.text);

        throw const FormatException('Error');
      },
      exceptionMatcher: (exception) => throw exception,
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
                  labelText: context.translate('pages.form.name'),
                ),
              ),
              TextFormField(
                focusNode: emailInput.focusNode,
                controller: emailInput.controller,
                decoration: InputDecoration(
                  errorText: emailInput.error.value,
                  labelText: context.translate('pages.form.email'),
                ),
              ),
              ElevatedButton(
                onPressed: form.submit,
                // onPressed: () => throw ExampleException('Error'),
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
