import 'package:flutter/material.dart';
import 'package:quitanda/src/pages/common_widgets/custom_text_field.dart';
import 'package:quitanda/src/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
            readOnly: true,
            initialValue: appData.user.email,
          ),
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
            readOnly: true,
            initialValue: appData.user.name,
          ),
          CustomTextField(
            icon: Icons.phone,
            label: 'Telefone',
            readOnly: true,
            initialValue: appData.user.phone,
          ),
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            initialValue: appData.user.cpf,
            readOnly: true,
            isSecret: true,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Atualizar Senha',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
