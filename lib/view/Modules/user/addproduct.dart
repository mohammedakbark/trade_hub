import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:trade_hub/model/barteraddproduct_model.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

class AddProductPage extends StatefulWidget {
  AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();

  final description = TextEditingController();

  final product = TextEditingController();

  final location = TextEditingController();
  final link = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Product',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 35,
              color: const Color(0xffB7A6FC)),
        ),
      ),
      body: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 189, 181, 228).withOpacity(0.4),
            const Color.fromARGB(255, 202, 189, 255)
          ],
        )),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(children: [
                Consumer<Controller>(builder: (context, controller, child) {
                  return DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, bottom: 30, top: 20),
                    borderRadius: BorderRadius.circular(40),
                    hint: const Text("Select Category"),
                    value: controller.selectedType,
                    onChanged: (newValue) {
                      // setState(() {
                      controller.selectedValue(newValue);
                      // });
                    },
                    items: <String>[
                      'Electronics',
                      'Gadget',
                      'Furniture',
                      'Vehicles'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width / 1.13,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is necessory";
                        } else {
                          return null;
                        }
                      },
                      maxLines: 1,
                      controller: product,
                      decoration: const InputDecoration(
                        hintText: "Product",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(5, 92, 157, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.8,
                  width: MediaQuery.of(context).size.width / 1.13,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "write somthing about this Product ";
                      } else {
                        return null;
                      }
                    },
                    maxLines: 7,
                    controller: description,
                    decoration: const InputDecoration(
                      hintText: "Write  something about this Product",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(5, 92, 157, 0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width / 1.13,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field is necessory";
                      } else {
                        return null;
                      }
                    },
                    maxLines: 1,
                    controller: location,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.location_on_outlined),
                      hintText: "Location",
                      errorBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(5, 92, 157, 0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width / 1.13,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is necessory";
                        }
                        if ((value.length < 10)) {
                          return "Enter the correct number";
                        } else {
                          return null;
                        }
                      },
                      maxLines: 1,
                      controller: link,
                      decoration: InputDecoration(
                        prefixText: "+91 ",
                        // suffix: Text("data"),
                        suffixIcon: Image.asset(
                          "assets/whatsapp.png",
                          scale: 24,
                        ),
                        hintText: "WhatsApp No.",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(5, 92, 157, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //----------------------------------1-------------------------------------
                      Consumer<Controller>(
                          builder: (context, controller, child) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                            color: controller.productImageURL1 == null
                                ? const Color(0xffB7A6FC)
                                : Colors.transparent,
                            image: DecorationImage(
                                image: controller.productImageURL1 != null
                                    ? FileImage(controller.productImage1!)
                                    : const AssetImage('assets/addImages.png',)
                                        as ImageProvider<Object>,
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.black, style: BorderStyle.solid),
                          ),
                          child: InkWell(
                            onTap: () async {
                              controller.addProductImage1();
                            },
                            child: controller.isImageLoading1
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Image.asset(
                                    "assets/+.png",
                                    color: const Color(0xffB7A6FC),
                                  ),
                          ),
                        );
                      }),

                      //--------------------2-------------------------
                      Consumer<Controller>(
                          builder: (context, controller, child) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                            color: controller.productImageURL2 == null
                                ? const Color(0xffB7A6FC)
                                : Colors.transparent,
                            image: DecorationImage(
                                image: controller.productImageURL2 != null
                                    ? FileImage(controller.productImage2!)
                                    : const AssetImage('assets/addImages.png')
                                        as ImageProvider<Object>,
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.black, style: BorderStyle.solid),
                          ),
                          child: InkWell(
                            onTap: () async {
                              controller.addProductImage2();
                            },
                            child: controller.isImageLoading2
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Image.asset(
                                    "assets/+.png",
                                    color: const Color(0xffB7A6FC),
                                    // fit: BoxFit.fill,
                                  ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ])),
        ),
      ),
      bottomNavigationBar: Consumer2<Controller, Firestore>(
          builder: (context, controller, firestore, child) {
        return InkWell(
          onTap: () async {
            if (_formKey.currentState!.validate()) {
              if (controller.selectedType == null) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Select Product Type"),
                ));
              } else {
                if (controller.productImage2 == null ||
                    controller.productImage1 == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Add Product Images"),
                  ));
                } else {
                  firestore
                      .addBarterProducttoCollection(BarterAddProductModel(
                          username: storeInstence.userModel!.name,
                          details: description.text,
                          image1: "${controller.productImageURL1}",
                          image2: "${controller.productImageURL2}",
                          productName: product.text,
                          productType: "${controller.selectedType}",
                          userID: FirebaseAuth.instance.currentUser!.uid,
                          whatsappNumber: link.text,
                          location: location.text))
                      .then((value) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                  "Your Product ${product.text} added Successfull"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      product.clear();
                                      description.clear();
                                      location.clear();
                                      link.clear();
                                      // controller.clearImage();

                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Navigationnn()),
                                          (route) => false);
                                    },
                                    child: const Text("OK"))
                              ],
                            ));
                  });
                }
              }

              print("object");
            }
          },
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * .07,
            width: width,
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 167, 148, 245)),
            child: Text(
              "Add Product",
              style: GoogleFonts.habibi(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
    );
  }
}
