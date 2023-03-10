import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RegisterImageButton extends StatefulWidget {
  const RegisterImageButton({super.key});

  @override
  State<RegisterImageButton> createState() => _RegisterImageButtonState();
}

class _RegisterImageButtonState extends State<RegisterImageButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Row(
          children: [
            const Flexible(flex: 1, child: SizedBox.expand()),
            Flexible(
                flex: 2,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color(0xffDAE2FF), shape: BoxShape.circle),
                  child: const Icon(Icons.image_rounded),
                )),
            const Flexible(flex: 1, child: SizedBox.expand()),
            Flexible(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text("갤러리 사진 업로드", style: TextStyle(fontSize: 16)),
              ),
            ),
            const Flexible(flex: 2, child: SizedBox.expand()),
          ],
        ),
      ),
    );
  }
}
