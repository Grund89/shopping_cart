import 'package:flutter/material.dart';

class AddshoppingListPage extends StatefulWidget {
  const AddshoppingListPage({super.key});

  @override
  State<AddshoppingListPage> createState() => _AddshoppingListPageState();
}

class _AddshoppingListPageState extends State<AddshoppingListPage> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: TextField(
                    key: const Key("input"),
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Nome da lista",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    cursorColor: Colors.blue,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildCancelButton(context),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: _buildCreateButton(context),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton _buildCancelButton(BuildContext ctx) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(.1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {
        Navigator.of(ctx).pop();
      },
      child: const Text(
        "Voltar",
        key: Key("BtnVoltar"),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  TextButton _buildCreateButton(BuildContext ctx) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
      ),
      onPressed: () {
        if (nameController.text.isNotEmpty) {
          Navigator.of(ctx).pop(nameController.text);
        }
      },
      child: const Text(
        "Criar",
        key: Key("BtnCriar"),
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
