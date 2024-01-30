import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_riski_test/core/helper/curr_number_formated.dart';
import 'package:muhammad_riski_test/core/helper/resolution_size.dart';
import 'package:muhammad_riski_test/core/material/material_color.dart';
import 'package:muhammad_riski_test/core/material/material_decoration.dart';
import 'package:muhammad_riski_test/core/material/material_text_style.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/controller/pln_controller.dart';
import 'package:muhammad_riski_test/feature/pln/presentation/widget/pln_appbar.dart';

import '../../../../core/helper/languages_key_helper.dart';

class PLNBody {
  final controller = Get.find<PLNController>();
  final appBar = PLNAppBar();
  body(context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top: 50, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar.appBar(),
            Divider(
              thickness: 1,
              color: materialColor.primaryColor,
            ),
            normalResolutionSizeHeight,
            _nominalToken(context),
            normalResolutionSizeHeight,
            ElevatedButton(
                style: materialDecoration.buttonStyle(context),
                onPressed: () {},
                child: Text(languagesKey.selectPayment)),
            mediumResolutionSizeHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  languagesKey.transactionHistory,
                  style: materialTextStyle.textStyleFZ12Bold,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      languagesKey.more,
                      style: materialTextStyle.textStyleFZ12CPrimary,
                    ))
              ],
            ),
            Divider(
              thickness: 1,
              color: materialColor.primaryColor,
            ),
            mediumResolutionSizeHeight,
            _history(),
          ],
        ),
      ),
    );
  }

  _nominalToken(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          languagesKey.selectNominalToken,
          style: materialTextStyle.textStyleFZ12,
        ),
        SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: controller.listCurr.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisExtent: 80,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) => _currItem(
                index: index,
                curr: controller.listCurr[index].curr,
                ampre:
                    "${controller.listCurr[index].amper} ${controller.listCurr[index].type}"),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: materialColor.primaryColor.withOpacity(.2)),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: materialColor.primaryColor,
              ),
              noromalResolutionSizeWidth,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 86,
                    child: Text.rich(
                        maxLines: 2,
                        TextSpan(children: [
                          TextSpan(
                              text: '1. Proses verifikasi transaksi',
                              style: materialTextStyle.textStyleFZ12),
                          TextSpan(
                              text: ' maksimal 1 x 24 jam',
                              style: materialTextStyle.textStyleFZ12Bold),
                        ])),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 86,
                    child: Text.rich(
                        maxLines: 2,
                        TextSpan(children: [
                          TextSpan(
                              text: '2. Mohon ',
                              style: materialTextStyle.textStyleFZ12),
                          TextSpan(
                              text: 'cek limit kWh',
                              style: materialTextStyle.textStyleFZ12Bold),
                          TextSpan(
                              text: ' anda sebelum membeli token listrik.',
                              style: materialTextStyle.textStyleFZ12),
                        ])),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  _history() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.countHistory.value,
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (context, index) => ListTile(
        title: Text(
          "${languagesKey.nominal} ${CurrFormatedNumber.formated(controller.listHistory[index].curr)}",
          style: materialTextStyle.textStyleFZ12Bold,
        ),
        subtitle: Text(controller.listHistory[index].date ?? ''),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://klik7tv.co.id/wp-content/uploads/2022/09/IMG-20220928-WA0042.jpg'),
        ),
      ),
    );
  }

  _currItem({curr, ampre, index}) {
    return GestureDetector(
      onTap: () => controller.onSelectedCurr(index),
      child: Obx(
        () => Container(
          height: 80,
          decoration: BoxDecoration(
            color: controller.boolSelected.isTrue &&
                    controller.selectedCurr.value == index
                ? materialColor.primaryColor.withOpacity(.3)
                : materialColor.colorWhite,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: controller.boolSelected.isTrue &&
                      controller.selectedCurr.value == index
                  ? materialColor.primaryColor
                  : materialColor.colorGrey,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CurrFormatedNumber.formated(curr),
                style: materialTextStyle.textStyleFZ12Bold,
              ),
              Text(
                ampre,
                style: materialTextStyle.textStyleFZ12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
