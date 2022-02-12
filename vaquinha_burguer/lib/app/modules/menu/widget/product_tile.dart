import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaquinha_burguer/app/core/ui/formatter_help.dart';
import 'package:vaquinha_burguer/app/core/ui/vaquinha_uI.dart';
import 'package:vaquinha_burguer/app/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //direciona para tela, e passa os dados do produto
        Get.toNamed('/product_detail', arguments: product);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'http://dartweek.academiadoflutter.com.br/images${product.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    product.name,
                    style: VaquinhaUI.textBold,
                  ),
                  Text(
                    FormatterHelp.formatCurrency(product.price),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
