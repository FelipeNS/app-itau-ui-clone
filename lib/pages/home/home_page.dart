import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itau_ui_clone/core/core.dart';
import 'package:itau_ui_clone/pages/home/widgets/app_bar_widget.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        color: AppColors.gray,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.orange,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.visibility_off,
                                  color: AppColors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                            Text(
                              'saldo em conta',
                              style: GoogleFonts.roboto(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.gray,
                                width: 0.3
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'R\$ 4.223,65',
                                  style: GoogleFonts.roboto(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'há 2 min',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: GestureDetector(
                                        child: Icon(
                                          AntDesign.reload1,
                                          color: AppColors.white,
                                          size: 14,
                                        )
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'cheque especial disponível de ',
                                style: GoogleFonts.roboto(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'R\$ 2.200,00',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ]
                              ),
                            ),
                            GestureDetector(
                              child: Icon(
                                Feather.chevron_right,
                                color: AppColors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            primary: AppColors.darkGray,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        color: AppColors.gray,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      Feather.home,
                                      color: AppColors.orange,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'soluções para esse momento',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            primary: AppColors.darkGray,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        color: AppColors.gray,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      FontAwesome.barcode,
                                      color: AppColors.orange,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'pagar conta',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            primary: AppColors.darkGray,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        color: AppColors.gray,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      Feather.plus,
                                      color: AppColors.blue,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'criar novo atalho',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.brown,
                              AppColors.lightBrown
                            ],
                            stops: [
                              0.0,
                              0.6
                            ],
                            transform: GradientRotation(2.13959913 * pi)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.gray
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Itau Multiplo Visa Click',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Row(
                                          children: [
                                            Text(
                                              'ocultar',
                                              style: GoogleFonts.roboto(
                                                color: AppColors.darkGray,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            Icon(
                                              Feather.chevron_up,
                                              color: AppColors.darkGray,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/visalogo.png'
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8
                                        ),
                                        child: Text(
                                          'final 1234',
                                          style: GoogleFonts.roboto(
                                            color: AppColors.darkGray,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.gray
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'limite utilizado',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'disponível',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(3),
                                            child: LinearProgressIndicator(
                                              backgroundColor: AppColors.gray,
                                              valueColor: AlwaysStoppedAnimation<Color>(AppColors.orange),
                                              value: (1234.22 / 5800),
                                              minHeight: 6,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'R\$ 1.234,22',
                                        style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'R\$ 4.565,78',
                                        style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.gray
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'fatura aberta',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'venc. 03 nov',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4,
                                      bottom: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'R\$ 354,32',
                                          style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.gray,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          Icon(
                                            AntDesign.calendar,
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 12,
                                              ),
                                              child: Text.rich(
                                                TextSpan(
                                                  text: 'compras a partir do dia',
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w400
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: ' 25 ',
                                                      style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'estarão na próxima fatura',
                                                      style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.w400
                                                      ),  
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text(
                                    'ver fatura',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.lightBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: AppColors.darkGray,
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text(
                                    'cartão virtual',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.lightBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: AppColors.darkGray,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.gray
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'crédito',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Row(
                                          children: [
                                            Text(
                                              'expandir',
                                              style: GoogleFonts.roboto(
                                                color: AppColors.darkGray,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            Icon(
                                              Feather.chevron_down,
                                              color: AppColors.darkGray,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text(
                                    'ver mais',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.lightBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: AppColors.darkGray,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Até ',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '5% OFF',
                                        style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          textStyle: TextStyle(
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' na taxa do seu empréstimo pelo app',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: OutlinedButton(
                                  onPressed: (){},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: AppColors.white,
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 12)
                                  ),
                                  child: Text(
                                    'ver limites',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.gray
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'meus\ninvestimentos',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.darkGray,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Row(
                                          children: [
                                            Text(
                                              'expandir',
                                              style: GoogleFonts.roboto(
                                                color: AppColors.darkGray,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            Icon(
                                              Feather.chevron_down,
                                              color: AppColors.darkGray,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: (){}, 
                                  child: Text(
                                    'ver detalhes',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.lightBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: AppColors.darkGray,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.ionBlue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/images/ionlogo.svg',
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Acompanhe suas carteiras de investimentos ',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'em um só lugar.',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.ionGreen,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                Feather.chevron_right,
                                color: AppColors.ionGreen,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.darkGray.withOpacity(0.2),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){},              
                style: TextButton.styleFrom(
                  primary: AppColors.darkGray,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(45, 45)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Feather.home,
                          color: AppColors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  primary: AppColors.darkGray,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(45, 45)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Feather.list,
                          color: AppColors.orange,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      'extrato',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  primary: AppColors.darkGray,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(45, 45)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Feather.dollar_sign,
                          color: AppColors.orange,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      'transações',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  primary: AppColors.darkGray,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(45, 45)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Feather.grid,
                          color: AppColors.orange,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      'serviços',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  primary: AppColors.darkGray,
                  padding: EdgeInsets.zero,
                  minimumSize: Size(45, 45)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Feather.message_circle,
                          color: AppColors.orange,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      'ajuda',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}