import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_style/constrants/Icons.dart';
import 'package:urban_style/constrants/color.dart';

Widget shimmer_loader(context) {
  return SingleChildScrollView(
      child: context == true
          ? Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 266,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18, right: 18, left: 18),
                                  child: Icon(
                                    IconHelper.icons[16],
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade500.withOpacity(0.20),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(80)),
                                        color: Colors.grey.shade400),
                                    child: Center(
                                      child: Icon(
                                        IconHelper.icons[17],
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 18, right: 18),
                                child: Container(
                                    height: 10,
                                    width: 50,
                                    color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          : Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 266,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18, right: 18, left: 18),
                              child: Icon(
                                IconHelper.icons[16],
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color:
                                Colors.grey.shade500.withOpacity(0.20),
                                borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80)),
                                    color: Colors.grey.shade400),
                                child: Center(
                                  child: Icon(
                                    IconHelper.icons[17],
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: double.infinity,
                                color: Colors.grey.shade400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 18, right: 18),
                            child: Container(
                                height: 10,
                                width: 50,
                                color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]
      ),

  );
}
