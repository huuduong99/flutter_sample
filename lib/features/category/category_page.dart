import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:push_notification_fcm/core/navigation/app_route.dart';

import '../../core/navigation/arguments/argument.dart';
import '../../models/image_details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath:
        'https://image.phunuonline.com.vn/news/2018/20180120/fckimage/120976_co-gai-viet-3-191526234.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New Year',
    details:
        'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
    index: 1,
  ),
  ImageDetails(
    imagePath:
        'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-3-1598425098341666827590.jpg',
    price: '\$10.00',
    photographer: 'Huu Duong',
    title: 'Spring',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 2,
  ),
  ImageDetails(
    imagePath:
        'https://znews-photo.zingcdn.me/w660/Uploaded/mdf_drkydd/2018_05_01/1_1.jpg',
    price: '\$30.00',
    photographer: 'Huu Duong',
    title: 'Casual Look',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 3,
  ),
  ImageDetails(
    imagePath:
        'https://img2.thuthuatphanmem.vn/uploads/2018/12/25/anh-dep-gai-xinh-nhu-bup-be_012857530.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 4,
  ),
  ImageDetails(
    imagePath:
        'https://thumb.emdep.vn/unsafe/450x0/quanlytin.emdep.vn/Share/Image/2021/08/12/co-gai-2-130103879.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 5,
  ),
  ImageDetails(
    imagePath:
        'https://goldmetal.vn/images/2020/02/cung-cap-nguoi-mau-nhi-chuyen-nghiep-tai-ha-noi-1581919516-2688941.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 6,
  ),
  ImageDetails(
    imagePath:
        'https://vnn-imgs-f.vgcloud.vn/2019/06/10/18/choang-ngop-ve-dep-cua-co-gai-nuoc-ngoai-ben-sen-ho-tay-11.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 7,
  ),
  ImageDetails(
    imagePath:
        'https://image-us.24h.com.vn/upload/1-2021/images/2021-01-10/2-1610272413-464-width650height650.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 8,
  ),
  ImageDetails(
    imagePath:
        'https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2019/09/02/dan-mang-ban-loan-vi-co-gai-toc-vang-dep-nhu-thien-than-1.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 9,
  ),
  ImageDetails(
    imagePath:
        'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-4-1598425098848545618064.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 10,
  ),
  ImageDetails(
    imagePath:
        'https://allimages.sgp1.digitaloceanspaces.com/photographercomvn/2020/08/1598204201_827_Ngam-Anh-Girl-xinh-Au-My-dep-tua-thien-than.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 11,
  ),
  ImageDetails(
    imagePath:
        'https://gamek.mediacdn.vn/133514250583805952/2020/2/3/photo-1-15807033191681253458203.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 12,
  ),
  ImageDetails(
    imagePath:
        'https://static2.yan.vn/YanNews/2167221/202007/dan-gai-xinh-viet-duoc-len-bao-nuoc-ngoai-vi-qua-xinh-dep-80d8b498.jpg',
    price: '\$20.00',
    photographer: 'Huu Duong',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 13,
  ),
  ImageDetails(
    imagePath:
        'https://genk.mediacdn.vn/2020/1/7/photo-1-15783682257621036671779.jpg',
    price: '\$20.00',
    photographer: 'Matthew',
    title: 'Cone Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 14,
  ),
  ImageDetails(
    imagePath:
        'https://img.docbao.vn/images/uploads/2020/08/26/103625243151178839858606252044032823402131n-1598416210451412454693.jpg',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 15,
  ),
  ImageDetails(
    imagePath:
        'https://static.tintuc.com.vn/images/ver3/2020/08/26/1598435161210-1598426412650-924758736439169097356488215107167873135112n-15984163027701220052989.jpg',
    price: '\$15.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    index: 16,
  ),
];

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, this.title = 'Gallery'}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(
        widget.title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: MasonryGridView.count(
              physics: const ClampingScrollPhysics(),
              itemCount: _images.length,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemBuilder: (context, index) {
                final image = _images[index];
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.mediaDetail,
                      arguments: MediaDetailArgs(imageDetails: image),
                    );
                  },
                  child: Hero(
                    tag: 'logo$index',
                    child: _ImageViewer(
                      url: _images[index].imagePath,
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class _ImageViewer extends StatelessWidget {
  const _ImageViewer({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, object, stack) {
          return Image.asset(
            'assets/images/no_image.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
