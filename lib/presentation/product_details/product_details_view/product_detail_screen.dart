import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/domain/models/product_details.dart';
import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_bloc.dart';
import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_states.dart';
import 'package:asos_app/presentation/product_details/product_details_view/product_indetails.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../app/di.dart';
import '../../resources/color_manager.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({Key? key, required this.productId}) : super(key: key);
  final String productId;

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => instance<ProductDetailsCubit>()
        ..getProductDetails(id: widget.productId),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SuccessProductDetailsState) {
            ProductDetailsCubit cubit = ProductDetailsCubit.get(context);
            return Scaffold(
              backgroundColor: ColorManager.primary,
              body: Body(product: cubit.productDetailsModel),
            );
          } else if (state is LoadingProductDetailsState) {
            return const Scaffold(
              backgroundColor: ColorManager.white,
              body: Center(
                  child: CircularProgressIndicator(
                color: ColorManager.green,
              )),
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: ColorManager.green,
            ));
          }
        },
      ),
    );
  }
}

class Body extends StatelessWidget {
  final ProductDetails product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: MediaQuery.of(context).size.height * 0.38,
          flexibleSpace: FlexibleSpaceBar(
            background: ProductImages(product: product),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_outlined,
                color: Colors.black, size: 18.0),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 17.0),
              child: FaIcon(FontAwesomeIcons.heart,
                  color: Colors.black, size: 18.0),
            )
          ],
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDescription extends StatefulWidget {
  ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetails product;
  late Variants selectedProduct = product.variants[0];

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              widget.product.price.current.text,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Text(
              widget.product.name,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: const Color(
                    0xff9f9f9f,
                  ),
                  fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              height: 1,
              color: const Color(0xff9f9f9f),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ColorDot(
                            color: widget.product.variants[0].colour.toColor(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            widget.product.variants[0].colour,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: ColorManager.black,
                                  fontSize: 18,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 1,
                      height: double.infinity,
                      color: const Color(0xff9f9f9f),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Size",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    fontSize: 18, color: const Color(0xff9f9f9f)),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: CustomDropdown(
                            product: widget.product,
                            selectedItem: widget.selectedProduct,
                            onChange: (Variants? val) {
                              setState(() {
                                widget.selectedProduct = val!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              height: 1,
              color: const Color(0xff9f9f9f),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.15,
              right: MediaQuery.of(context).size.width * 0.15,
              bottom: 5,
              top: 5,
            ),
            child: DefaultButton(
              text: "Add To Cart",
              press: widget.selectedProduct.isInStock ? () {} : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              height: 1,
              color: const Color(0xff9f9f9f),
            ),
          ),
          ListTile(
            title: const Text(
              "Product Details",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProductInDetails(
                  productDetails: widget.product,
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}

class CustomDropdown extends StatefulWidget {
  CustomDropdown(
      {Key? key,
      required this.product,
      required this.selectedItem,
      this.onChange})
      : super(key: key);
  final ProductDetails product;
  Variants selectedItem;
  void Function(Variants?)? onChange;
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      value: widget.selectedItem,
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 24,
        color: Colors.black,
      ),
      items: widget.product.variants.map((i) {
        return DropdownMenuItem(
            alignment: AlignmentDirectional.center,
            value: i,
            child: Text(
              i.brandSize,
              style: TextStyle(
                color: i.isInStock ? ColorManager.black : ColorManager.pink,
                decoration: i.isInStock
                    ? TextDecoration.none
                    : TextDecoration.lineThrough,
              ),
            ));
      }).toList(),
      onChanged: widget.onChange,
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(right: 2),
      //  padding: const EdgeInsets.all(8),
      height: 35,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
            color: isSelected ? ColorManager.green : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetails product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Hero(
              tag: widget.product.id.toString(),
              child: CachedNetworkImage(
                imageUrl:
                    'https://${widget.product.media.images[selectedImage].url}',
              ),
            ),
          ),
        ),
        if(widget.product.price.isMarkedDown)
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all(15),
            width: 64,
            decoration: const BoxDecoration(
              color:
              ColorManager.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child:const Text("Is Selling Fast",style: TextStyle(color: ColorManager.white),),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(widget.product.media.images.length,
                  (index) => buildSmallProductPreview(index)),
            ],
          ),
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: ColorManager.green
                  .withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: CachedNetworkImage(
          imageUrl: 'https://${widget.product.media.images[index].url}',
        ),
      ),
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: child,
    );
  }
}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
    this.showShadow = false,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCancelCallback press;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: ColorManager.green,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: ColorManager.green,
            disabledBackgroundColor: Colors.black45.withOpacity(0.2),
            disabledForegroundColor: Colors.white70),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

