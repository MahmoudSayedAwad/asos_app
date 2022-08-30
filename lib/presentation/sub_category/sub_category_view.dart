import 'package:asos_app/app/di.dart';
import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/presentation/main/bloc/cubit.dart';
import 'package:asos_app/presentation/main/bloc/states.dart';
import 'package:asos_app/presentation/zoom/zoom.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SubCategory extends StatelessWidget {
  const SubCategory({Key? key, required this.childIndex, required this.tabIndex}) : super(key: key);
final int childIndex;
final int tabIndex;
  @override
  Widget build(BuildContext context) {


    return BlocConsumer<AsosAppCubit, AsosAppStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          AsosAppCubit cubit = AsosAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              title: Text(cubit
                  .categories
                  .navigation[tabIndex]
                  .children[4]
                  .children[childIndex]
                  .content
                  .title),
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: cubit.categories.navigation[tabIndex].children[4]
                    .children[childIndex].children
                    .map((subcat) {
                  return SubCategoryList(
                    items: subcat.children,
                    header: subcat.content.title,
                    display: subcat.display.mobileTemplateName,
                  );
                }).toList(),
              ),
            ),
          );
        });
  }
}

class SubCategoryList extends StatelessWidget {
  SubCategoryList(
      {Key? key,
      required this.header,
      required this.items,
      required this.display})
      : super(key: key);
  final String display;
  final String header;
  final List<Children> items;
  late Widget listItem;

  Widget setListItem(int index) {
    switch (display) {
      case "circleImageList":
        {
          listItem = SubCategoryListItem(
            title: items[index].content.title,
            imageUrl: items[index].content.mobileImageUrl,
            id: items[index].link.categoryId,
          );
          return listItem;
        }

      case "circleImageRight":
        {
          listItem = CircleImageRight(
            imageTitle: items[index].content.title,
            imageUrl: items[index].content.mobileImageUrl,
            id: items[index].link.categoryId,
          );
          return listItem;
        }

      case "imageBackground":
        {
          listItem = CardWithBackgroundImage(
            id: items[index].link.categoryId,
            imageUrl: items[index].content.mobileImageUrl,
            imageTitle: items[index].content.title,
          );
          return listItem;
        }

      default:
        {
          listItem = CardWithBackgroundImage(
              id: items[index].link.categoryId,
              imageUrl: items[index].content.mobileImageUrl,
              imageTitle: items[index].content.title);
          return listItem;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          if (index == 0 &&
              header != 'App & Mobile Promo' &&
              header != 'App and Mobile Top Level' &&
              header != 'Top Level App & Mobile') {
            return Column(
              children: [
                // The header
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  width: double.infinity,
                  child: Text(
                    header,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                // The fist list item
                setListItem(index)
              ],
            );
          }
          return setListItem(index);
        });
  }
}

class CardWithBackgroundImage extends StatelessWidget {
  const CardWithBackgroundImage({
    Key? key,
    required this.imageUrl,
    required this.imageTitle,
    required this.id,
  }) : super(key: key);
  final String imageUrl;
  final String imageTitle;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          initProductsModule();
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {

            return Zoom(
              id: id.toString(),
            );
          }));
        },
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            CachedNetworkImage(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              imageUrl: imageUrl,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    imageTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleImageRight extends StatelessWidget {
  const CircleImageRight({
    Key? key,
    required this.imageUrl,
    required this.imageTitle,
    required this.id,
  }) : super(key: key);
  final String imageUrl;
  final String imageTitle;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          initProductsModule();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Zoom(id: id.toString());
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  imageTitle,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(imageUrl),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubCategoryListItem extends StatelessWidget {
  const SubCategoryListItem(
      {Key? key, required this.imageUrl, required this.title, required this.id})
      : super(key: key);
  final String? imageUrl;
  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        initProductsModule();
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return Zoom(id: id.toString());
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black26))),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(imageUrl ??
                "https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png?w=640"),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
