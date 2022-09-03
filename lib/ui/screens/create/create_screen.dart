import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/app_bloc.dart';
import '../../../bloc/product_form_bloc.dart';
import '../../../imports.dart';
import '../../shared_contents/product/product_form.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductFormBloc(context.read()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('create_screen_title'.tr()),
        ),
        body: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return BlocConsumer<ProductFormBloc, ProductFormState>(
              listener: (context, state) {
                if (state.status.isSuccess) {
                  // TODO: Show success message
                  Navigator.pop(context);
                } else if (state.status.isError) {
                  // TODO: Show error message
                }
              },
              listenWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, formState) {
                return ProductForm(
                  regions: state.regions.data,
                  images: formState.model.images ?? [],
                  isSending: formState.status.isSubmitting,
                  onPickImagesTap: () {
                    context.read<ProductFormBloc>().add(PickImageEvent());
                  },
                  onRemoveImage: (index) {
                    context
                        .read<ProductFormBloc>()
                        .add(RemoveImageEvent(index));
                  },
                  onSendTap: () {
                    context.read<ProductFormBloc>().add(SubmitFormEvent());
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
