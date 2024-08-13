import 'package:collection/collection.dart';
import 'package:flutter_sample/models/user/user.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRepository {
  final List<User> _users = const [
    User(
      imagePath:
          'https://image.phunuonline.com.vn/news/2018/20180120/fckimage/120976_co-gai-viet-3-191526234.jpg',
      price: '\$55.00',
      photographer: 'Huu Duong',
      name: 'Dara',
      details:
          'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
      id: 1,
    ),
    User(
      imagePath:
          'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-3-1598425098341666827590.jpg',
      price: '\$10.00',
      photographer: 'Huu Duong',
      name: 'Lisa',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 2,
    ),
    User(
      imagePath:
          'https://znews-photo.zingcdn.me/w660/Uploaded/mdf_drkydd/2018_05_01/1_1.jpg',
      price: '\$30.00',
      photographer: 'Huu Duong',
      name: 'My Quyen',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 3,
    ),
    User(
      imagePath:
          'https://img2.thuthuatphanmem.vn/uploads/2018/12/25/anh-dep-gai-xinh-nhu-bup-be_012857530.jpg',
      price: '\$69.00',
      photographer: 'Huu Duong',
      name: 'Nene',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 4,
    ),
    User(
      imagePath:
          'https://thumb.emdep.vn/unsafe/450x0/quanlytin.emdep.vn/Share/Image/2021/08/12/co-gai-2-130103879.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      name: 'Anna',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 5,
    ),
    User(
      imagePath:
          'https://goldmetal.vn/images/2020/02/cung-cap-nguoi-mau-nhi-chuyen-nghiep-tai-ha-noi-1581919516-2688941.jpg',
      price: '\$24.00',
      photographer: 'Huu Duong',
      name: 'Thanh Ngan',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 6,
    ),
    User(
      imagePath:
          'https://vnn-imgs-f.vgcloud.vn/2019/06/10/18/choang-ngop-ve-dep-cua-co-gai-nuoc-ngoai-ben-sen-ho-tay-11.jpg',
      price: '\$32.00',
      photographer: 'Huu Duong',
      name: 'My ngoc',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 7,
    ),
    User(
      imagePath:
          'https://image-us.24h.com.vn/upload/1-2021/images/2021-01-10/2-1610272413-464-width650height650.jpg',
      price: '\$26.00',
      photographer: 'Huu Duong',
      name: 'Thao Huong',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 8,
    ),
    User(
      imagePath:
          'https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2019/09/02/dan-mang-ban-loan-vi-co-gai-toc-vang-dep-nhu-thien-than-1.jpg',
      price: '\$12.00',
      photographer: 'Huu Duong',
      name: 'Bich Tuyen',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 9,
    ),
    User(
      imagePath:
          'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-4-1598425098848545618064.jpg',
      price: '\$58.00',
      photographer: 'Huu Duong',
      name: 'Thanh Hien',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 10,
    ),
    User(
      imagePath:
          'https://allimages.sgp1.digitaloceanspaces.com/photographercomvn/2020/08/1598204201_827_Ngam-Anh-Girl-xinh-Au-My-dep-tua-thien-than.jpg',
      price: '\$45.00',
      photographer: 'Huu Duong',
      name: 'Bich Ngoc',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 11,
    ),
    User(
      imagePath:
          'https://gamek.mediacdn.vn/133514250583805952/2020/2/3/photo-1-15807033191681253458203.jpg',
      price: '\$9.00',
      photographer: 'Huu Duong',
      name: 'Bich Quyen',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 12,
    ),
    User(
      imagePath:
          'https://static2.yan.vn/YanNews/2167221/202007/dan-gai-xinh-viet-duoc-len-bao-nuoc-ngoai-vi-qua-xinh-dep-80d8b498.jpg',
      price: '\$62.00',
      photographer: 'Huu Duong',
      name: 'Anh Thu',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 13,
    ),
    User(
      imagePath:
          'https://genk.mediacdn.vn/2020/1/7/photo-1-15783682257621036671779.jpg',
      price: '\$19.00',
      photographer: 'Matthew',
      name: 'Thanh Tuyen',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 14,
    ),
    User(
      imagePath:
          'https://img.docbao.vn/images/uploads/2020/08/26/103625243151178839858606252044032823402131n-1598416210451412454693.jpg',
      price: '\$47.00',
      photographer: 'Martin Sawyer',
      name: 'Yen Nhi',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 15,
    ),
    User(
      imagePath:
          'https://static.tintuc.com.vn/images/ver3/2020/08/26/1598435161210-1598426412650-924758736439169097356488215107167873135112n-15984163027701220052989.jpg',
      price: '\$23.00',
      photographer: 'John Doe',
      name: 'Emily',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 16,
    ),
  ];

  Future<List<User>> getUsers() async {
    List<User> users = [];

    await Future.delayed(const Duration(milliseconds: 500), () {
      users = _users;
    });

    return users;
  }

  Future<User> getUserById({required int id}) async {
    late User user;

    await Future.delayed(const Duration(milliseconds: 500), () {
      user = _users.firstWhereOrNull((element) => element.id == id) ??
          const User();
    });

    return user;
  }
}
