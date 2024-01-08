import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/addProductShopModel.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/admin/naviagtionShop.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class AddProductPageShop extends StatefulWidget {
  String shopName;
  AddProductPageShop({super.key, required this.shopName});

  @override
  State<AddProductPageShop> createState() => _AddProductPageShopState();
}

var productName = TextEditingController();
var productDescription = TextEditingController();
var amount = TextEditingController();

//----------selectVarient
var varient1title = TextEditingController();
var varient1detail = TextEditingController();
//--
var varient2title = TextEditingController();
var varient2detail = TextEditingController();

//--------------add higligt
// var highlight1Image=TextEditingController();
// var highlight2Image=TextEditingController();
// var highlight3Image=TextEditingController();
// var highlight4Image=TextEditingController();
// var highlight5Image=TextEditingController();
//--
var highlightHead1 = TextEditingController();
var highlightHead2 = TextEditingController();
var highlightHead3 = TextEditingController();
var highlightHead4 = TextEditingController();
var highlightHead5 = TextEditingController();
//--
var highlightText1 = TextEditingController();
var highlightText2 = TextEditingController();
var highlightText3 = TextEditingController();
var highlightText4 = TextEditingController();
var highlightText5 = TextEditingController();

//--------------add other detail
// var otherDetail1Image=TextEditingController();
// var otherDetail2Image=TextEditingController();
// var otherDetail3Image=TextEditingController();
// var otherDetail4Image=TextEditingController();
// var otherDetail5Image=TextEditingController();
//--
var otherDetailHead1 = TextEditingController();
var otherDetailHead2 = TextEditingController();
var otherDetailHead3 = TextEditingController();
var otherDetailHead4 = TextEditingController();
var otherDetailHead5 = TextEditingController();
//--
var otherDetailText1 = TextEditingController();
var otherDetailText2 = TextEditingController();
var otherDetailText3 = TextEditingController();
var otherDetailText4 = TextEditingController();
var otherDetailText5 = TextEditingController();

final _form = GlobalKey<FormState>();

class _AddProductPageShopState extends State<AddProductPageShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.shopName,
                      style: GoogleFonts.lexendDeca(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Consumer<Controller>(builder: (context, controller, child) {
                return InkWell(
                  onTap: () {
                    controller.addProductImageShop();
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          controller.isImageLoadingShop == true
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/Rectangle 18823.png'),
                                    controller.shopProductImage == null
                                        ? Image.asset('assets/+ (1).png')
                                        : Image.file(
                                            controller.shopProductImage!,
                                            height: 220,
                                            width: 220,
                                            fit: BoxFit.fill,
                                          )
                                  ],
                                ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset('assets/Group 3.png'),
                          )
                        ],
                      )),
                );
              }),

              //================================================================================================================
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 35, top: 10, bottom: 10),
                child: TextFormField(
                  controller: productName,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "this field is necessory";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff544C4C99)),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff544C4C99)),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    border: InputBorder.none,
                    hintText: 'Product Name',
                    // suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    hintStyle: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 35, top: 10, bottom: 10),
                child: TextFormField(
                  controller: productDescription,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "this field is necessory";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: const Color(0xff544C4C99)),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff544C4C99)),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    border: InputBorder.none,
                    hintText: 'Product description',
                    // suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    hintStyle: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: Colors.black),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 13, top: 10),
                child: Text(
                  'delivery status show here',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w400,
                      fontSize: 8,
                      color: const Color(0xff565656)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 35, top: 10, bottom: 10),
                child: TextFormField(
                  controller: amount,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "this field is necessory";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: const Color(0xff544C4C99)),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff544C4C99)),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    border: InputBorder.none,
                    hintText: ' x,xx,xxx',
                    prefixIcon: Image.asset('assets/Rupee (INR).png'),
                    hintStyle: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ),

              //=======================================================================================================

              Padding(
                padding: const EdgeInsets.only(left: 13, top: 10),
                child: Text(
                  'Select Variant',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),

              //=======================================================================================================
              Table(
                children: [
                  TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 35, top: 10, bottom: 10),
                          child: TextFormField(
                            controller: varient1title,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this field is necessory";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Title',
                              // prefixIcon: Image.asset('assets/Rupee (INR).png'),
                              hintStyle: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 35, top: 10, bottom: 10),
                          child: TextFormField(
                            controller: varient1detail,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this field is necessory";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'add detail here',
                              // prefixIcon: Image.asset('assets/Rupee (INR).png'),
                              hintStyle: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.pink[300],
                      )),
                  TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 35, top: 10, bottom: 10),
                          child: TextFormField(
                            controller: varient2title,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this field is necessory";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Title',
                              // prefixIcon: Image.asset('assets/Rupee (INR).png'),
                              hintStyle: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 35, top: 10, bottom: 10),
                          child: TextFormField(
                            controller: varient2detail,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this field is necessory";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'add detail here',
                              // prefixIcon: Image.asset('assets/Rupee (INR).png'),
                              hintStyle: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.pink[300],
                      ))
                ],
              ),

              //============================================================================================================================
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                child:
                    Consumer<Controller>(builder: (context, controller, child) {
                  return Table(
                    children: [
                      TableRow(children: [
                        DropdownButtonFormField<String>(
                          hint: const Text("Delivery ?"),
                          value: controller.selectedDelivery,
                          onChanged: (newValue) {
                            // Handle the selection

                            setState(() {
                              controller.selectedDelivery = newValue;
                            });
                          },
                          items: <String>[
                            'Free Delivery',
                            'Paid Deliver',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: controller.selectedDelivery ==
                                            "Free Delivery"
                                        ? Colors.green
                                        : Color.fromARGB(255, 4, 0, 255)),
                              ),
                            );
                          }).toList(),
                        ),
                        DropdownButtonFormField<String>(
                          hint: const Text("Stock ?"),
                          value: controller.isInStock,
                          onChanged: (newValue) {
                            // Handle the selection

                            setState(() {
                              controller.isInStock = newValue;
                            });
                          },
                          items: <String>[
                            'In Stock',
                            'Out of Stock',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: controller.isInStock == "In Stock"
                                        ? Colors.green
                                        : Color.fromARGB(255, 4, 0, 255)),
                              ),
                            );
                          }).toList(),
                        ),
                      ])
                    ],
                  );
                }),
              ),

              //=========================================================================================================

              //======================================================================================================

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30, bottom: 10),
                child: Text(
                  'Add Highlights',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xff000000)),
                ),
              ),

              //======================================================================================================

              Container(
                height: 2,
                color: Colors.black,
              ),
              Container(
                // height: 380,
                color: Colors.pink[300],
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightHead1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightText1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightHead2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightText2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightHead3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightText3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightHead4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightText4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightHead5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: highlightText5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: Colors.black,
              ),

              //==========================================================================================================

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30, bottom: 10),
                child: Text(
                  'Add Other Details',
                  style: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xff000000)),
                ),
              ),

              //======================================================================================================

              Container(
                height: 2,
                color: Colors.black,
              ),
              Container(
                // height: 380,
                color: Colors.pink[300],
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailHead1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailText1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailHead2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailText2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailHead3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailText3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailHead4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailText4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Img_load_box_fill.png'),
                      title: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailHead5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Head",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: const Color(0xff000000)),
                        ),
                      ),
                      subtitle: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is necessory";
                          } else {
                            return null;
                          }
                        },
                        controller: otherDetailText5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Text",
                          hintStyle: GoogleFonts.lexendDeca(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color(0xff000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Container(
                  height: 2,
                  color: Colors.black,
                ),
              ),

              //==========================================================================================================
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          Consumer2<Controller,Firestore>(builder: (context, controller,firestore, child) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * .08,
            child: ElevatedButton(
                onPressed: () {
                  if (_form.currentState!.validate()) {
                    if (controller.isInStock != null &&
                        controller.selectedDelivery != null) {
                      if (controller.shopProductImageURL != null &&
                          controller.shopProductImageURL!.isNotEmpty) {
                        storeInstence.addProductToShopCollection(
                            FirebaseAuth.instance.currentUser?.uid,
                            AddProductShopModel(
                              shopName:"${firestore.shopDataModel?.shopNmae}" ,
                              upiID:"${firestore.shopDataModel?.upiID}" ,
                                
                                amount: amount.text,
                                productDescription: productDescription.text,
                                highlightHead1: highlightHead1.text,
                                highlightHead2: highlightHead2.text,
                                highlightHead3: highlightHead3.text,
                                highlightHead4: highlightHead4.text,
                                highlightHead5: highlightHead5.text,
                                highlightText1: highlightText1.text,
                                highlightText2: highlightText2.text,
                                highlightText3: highlightText3.text,
                                highlightText4: highlightText4.text,
                                highlightText5: highlightText5.text,
                                isFreeDelivery:
                                    "${controller.selectedDelivery}",
                                isInStock: "${controller.isInStock}",
                                otherDetailHead1: otherDetailHead1.text,
                                otherDetailHead2: otherDetailHead2.text,
                                otherDetailHead3: otherDetailHead3.text,
                                otherDetailHead4: otherDetailHead4.text,
                                otherDetailHead5: otherDetailHead5.text,
                                otherDetailText1: otherDetailText1.text,
                                otherDetailText2: otherDetailText2.text,
                                otherDetailText3: otherDetailText3.text,
                                otherDetailText4: otherDetailText4.text,
                                otherDetailText5: otherDetailText5.text,
                                productImage:
                                    "${controller.shopProductImageURL}",
                                productName: productName.text,
                                shopId: FirebaseAuth.instance.currentUser!.uid,
                                varient1detail: varient1detail.text,
                                varient1title: varient1title.text,
                                varient2detail: varient2detail.text,
                                varient2title: varient2title.text));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationShop()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Make sure,you added Image")));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Make sure ,added Image and selected delivery and stock")));
                    }
                  }
                },
                child: Text(
                  "Add Product",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffFF6565),
                      fontSize: 22),
                )));
      }),
    );
  }
}
