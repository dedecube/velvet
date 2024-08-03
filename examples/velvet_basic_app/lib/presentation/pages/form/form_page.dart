import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:flutter/material.dart';
import 'package:velvet_basic_app/presentation/pages/form/hooks/use_email_input.dart';
import 'package:velvet_basic_app/presentation/pages/form/hooks/use_name_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ExampleRequest extends HttpRequestMapContract<Map<String, String>> {
  @override
  HttpRequestMethodEnum get method => HttpRequestMethodEnum.get;

  @override
  String get rawPath => '/todos/1';

  @override
  Map<String, String> Function(Map<String, dynamic> json) get itemMapper =>
      (json) => {'name': json['id']};
}

class FormPage extends HookConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nameInput = useNameInput();
    var emailInput = useEmailInput();

    BuildContext? onlineContext;
    BuildContext? offlineContext;

    useOnOnline(() {
      if (offlineContext != null && offlineContext!.mounted) {
        Navigator.of(offlineContext!).pop();
      }

      showDialog(
          context: context,
          builder: (context) {
            onlineContext = context;

            return AlertDialog(
              title: const Text('Online'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          });
    });

    useOnOffline(() {
      showDialog(
          context: context,
          builder: (context) {
            offlineContext = context;

            if (onlineContext != null && onlineContext!.mounted) {
              Navigator.of(onlineContext!).pop();
            }

            return AlertDialog(
              title: const Text('Offline'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          });
    });

    var form = useForm(
      {
        'name': nameInput,
        'email': emailInput,
      },
      (inputs) async {
        talkerGlobalInstance.info(nameInput.value);
        talkerGlobalInstance.info(nameInput.controller.text);

        final response = (await Http(HttpConfig(
                    baseURL: 'https://jsonplaceholder.typicode.com/'))
                .request(ExampleRequest()))
            .toObject();

        talkerGlobalInstance.info(response);
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
