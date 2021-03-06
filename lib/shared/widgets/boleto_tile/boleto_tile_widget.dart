import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: App_text_styles.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: App_text_styles.captionBody,
        ),
        trailing: Text.rich(TextSpan(
          text: "R\$ ",
          style: App_text_styles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(2)}",
              style: App_text_styles.trailingBold,
            ),
          ],
        )),
      ),
    );
  }
}
