import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_bloc.dart';
import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_states.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app/di.dart';
import '../../resources/color_manager.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({Key? key,required this.productId}) : super(key: key);
 final String productId;

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(

      create:  (_) => instance<ProductDetailsCubit>()..getProductDetails(id:widget.productId),
      child: BlocConsumer<ProductDetailsCubit,ProductDetailsStates>(
        listener: (context,state){},
        builder:(context,state){
          if(state is SuccessProductDetailsState){
            return Scaffold(
              appBar: AppBar(
                leading: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black, size: 18.0),
                title: const Text('SNK', style: TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'Montserrat-black')),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, top: 17.0),
                    child: FaIcon(FontAwesomeIcons.heart, color: Colors.black, size: 18.0),
                  )
                ],
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width,
                        child: CachedNetworkImage(imageUrl: "https://scontent.fcai19-2.fna.fbcdn.net/v/t1.18169-9/27655028_100802907412584_4812417052601228228_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGgzPbE4Y7ApDNsuMhcBSUS8etMPXW_iUjx60w9db-JSLcSvZT0TuyP8ptu3JIvWdw4dXIFq0vw3NVhJpfypCDC&_nc_ohc=Rx2tL8RrEcAAX9IBgev&_nc_ht=scontent.fcai19-2.fna&oh=00_AT8kevgW4uelLvYmC-5pgx8E2FVaVRBeVX9N2XKQQy3-mw&oe=63378552",),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Text('NIKE Men\'s Shoes', style: TextStyle(fontSize: 13.0, color: Colors.grey)),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Nike Air Huarache', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800, color: Colors.black)),
                            Text('\$120', style: TextStyle(fontSize: 25.0, color: Colors.black, fontFamily: 'Montserrat-black')),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Text('Sizes', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black)),
                      ),
                      const SizedBox(height: 20.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const SizedBox(width: 10.0),
                            _makeSizeButton('US7', true),
                            const SizedBox(width: 8.0),
                            _makeSizeButton('US7.5', true),
                            const SizedBox(width: 8.0),
                            _makeSizeButton('US8', false),
                            const SizedBox(width: 8.0),
                            _makeSizeButton('US8.5', true),
                            const SizedBox(width: 8.0),
                            _makeSizeButton('US9', true),
                            const SizedBox(width: 8.0),
                            _makeSizeButton('US9.5', true),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Text('*Faster Shipping options may be available', style:  TextStyle(fontSize: 13.0, color: Colors.grey)),
                      ),
                      const SizedBox(height: 30.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Text('Description', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.black)),
                      ),
                      const SizedBox(height: 15.0),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Text('Built to fit your foot and designed for comfort, the Nike Air Huarache brings back a street-level favorite. Soft leather accents on the upper mix with super-breathable, perfectly shined neoprene-like fabric for easy styling. The low-cut collar and bootie-like construction keep it sleek. Its iconic heel clip and stripped away branding keep the early \'90s look you love.', style: TextStyle(fontSize: 13.0, color: Colors.grey, height: 1.5)),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }else if(state is LoadingProductDetailsState)
          {
            return  const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.green,
                ));
          }else{
            return  const Scaffold(
              backgroundColor: ColorManager.white,
              body: Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.green,
                  )),
            );
          }

        } ,


      ),
    );
  }

  Widget _makeSizeButton(String size, bool available) {
    return Container(
      width: 80.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        border: available ? Border.all(color: Colors.grey, width: 0.3) : Border.all(color: Colors.transparent, width: 0),
        color: available ? Colors.white : Colors.grey[300],
      ),
      child: Center(
        child: Text(
            size,
            style: available ? const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500, color: Colors.black) : TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500, color: Colors.grey[50])
        ),
      ),
    );
  }
}