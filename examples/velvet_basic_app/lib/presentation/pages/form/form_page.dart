import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormPage extends HookConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const inputOptions = InputOptions(
      shouldValidateOnChange: false,
      shouldValidateOnFocusLost: false,
      shouldClearErrorOnFocus: false,
      shouldClearErrorOnChange: true,
    );

    var nameInput = useInput(
      rules: [
        RequiredStringRule(),
        MinLengthRule(3),
      ],
      options: inputOptions,
    );

    var emailInput = useInput(
      rules: [
        RequiredStringRule(),
        EmailRule(),
      ],
      options: inputOptions,
    );

    var form = useForm(
      {
        'name': nameInput,
        'email': emailInput,
      },
      (inputs) async {},
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
                controller: form.inputs['name']!.controller,
                decoration: InputDecoration(
                  errorText: form.inputs['name']!.errorText(),
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                focusNode: emailInput.focusNode,
                controller: form.inputs['email']!.controller,
                decoration: InputDecoration(
                  errorText:
                      form.inputs['email']!.errorText(args: {'name': 'mmail'}),
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
