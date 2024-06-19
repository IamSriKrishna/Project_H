class HomeModel {
  final String title;
  final String area;
  final List<String> img;
  HomeModel({required this.title, required this.area, required this.img});
}

final List<HomeModel> homeModel = [
  HomeModel(
    title: 'Classic House',
    area: 'Adyar',
    img: [
      'https://imgs.search.brave.com/84fDrOzj4nZMd_-q3wuLpXyYCgMFZ3U1C8JaqgHq5n8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9s/dXh1cnktcG9vbC12/aWxsYS1zcGVjdGFj/dWxhci1jb250ZW1w/b3JhcnktZGVzaWdu/LWRpZ2l0YWwtYXJ0/LXJlYWwtZXN0YXRl/LWhvbWUtaG91c2Ut/cHJvcGVydHktZ2Vf/MTI1OC0xNTA3NDku/anBnP3NpemU9NjI2/JmV4dD1qcGc',
      'https://imgs.search.brave.com/zi9DvhvzOBxmPnEv4rEUoyxtURiruLADK2woTGST3OY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzE4LzVi/LzMxLzE4NWIzMTU0/ZjZjNjQwZGJjZGQ0/ZTRjN2I0ZGY1NDM4/LmpwZw',
      'https://imgs.search.brave.com/mLbDFBlu2JJnA4dPmTrOYvTiC1RFAGVlCVjZfqH4rzE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2Y0L2E4/L2NhL2Y0YThjYTgz/ODVkMmFmYmY1NjE2/NzM5ZDVmZTM3Yjgx/LmpwZw',
      'https://imgs.search.brave.com/VAoDVDLl1tuYlVhcAskxKgHtj1lRr5WdvTX3gZCHODs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9tZXN0cmF0b3Nw/aGVyZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDYv/MmFkLUJlYWNoLmpw/Zw',
    ],
  ),
  HomeModel(
    title: 'Vintage House',
    area: 'Thiruvanmiyur',
    img: [
      'https://imgs.search.brave.com/mLbDFBlu2JJnA4dPmTrOYvTiC1RFAGVlCVjZfqH4rzE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2Y0L2E4/L2NhL2Y0YThjYTgz/ODVkMmFmYmY1NjE2/NzM5ZDVmZTM3Yjgx/LmpwZw',
      'https://imgs.search.brave.com/VAoDVDLl1tuYlVhcAskxKgHtj1lRr5WdvTX3gZCHODs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9tZXN0cmF0b3Nw/aGVyZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDYv/MmFkLUJlYWNoLmpw/Zw',
      'https://imgs.search.brave.com/zi9DvhvzOBxmPnEv4rEUoyxtURiruLADK2woTGST3OY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzE4LzVi/LzMxLzE4NWIzMTU0/ZjZjNjQwZGJjZGQ0/ZTRjN2I0ZGY1NDM4/LmpwZw',
      'https://imgs.search.brave.com/84fDrOzj4nZMd_-q3wuLpXyYCgMFZ3U1C8JaqgHq5n8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9s/dXh1cnktcG9vbC12/aWxsYS1zcGVjdGFj/dWxhci1jb250ZW1w/b3JhcnktZGVzaWdu/LWRpZ2l0YWwtYXJ0/LXJlYWwtZXN0YXRl/LWhvbWUtaG91c2Ut/cHJvcGVydHktZ2Vf/MTI1OC0xNTA3NDku/anBnP3NpemU9NjI2/JmV4dD1qcGc',
    ],
  ),
  HomeModel(
    title: 'Modern House',
    area: 'Porur',
    img: [
      'https://imgs.search.brave.com/84fDrOzj4nZMd_-q3wuLpXyYCgMFZ3U1C8JaqgHq5n8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9s/dXh1cnktcG9vbC12/aWxsYS1zcGVjdGFj/dWxhci1jb250ZW1w/b3JhcnktZGVzaWdu/LWRpZ2l0YWwtYXJ0/LXJlYWwtZXN0YXRl/LWhvbWUtaG91c2Ut/cHJvcGVydHktZ2Vf/MTI1OC0xNTA3NDku/anBnP3NpemU9NjI2/JmV4dD1qcGc',
      'https://imgs.search.brave.com/VAoDVDLl1tuYlVhcAskxKgHtj1lRr5WdvTX3gZCHODs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9tZXN0cmF0b3Nw/aGVyZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDYv/MmFkLUJlYWNoLmpw/Zw',
      'https://imgs.search.brave.com/mLbDFBlu2JJnA4dPmTrOYvTiC1RFAGVlCVjZfqH4rzE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2Y0L2E4/L2NhL2Y0YThjYTgz/ODVkMmFmYmY1NjE2/NzM5ZDVmZTM3Yjgx/LmpwZw',
      'https://imgs.search.brave.com/zi9DvhvzOBxmPnEv4rEUoyxtURiruLADK2woTGST3OY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzE4LzVi/LzMxLzE4NWIzMTU0/ZjZjNjQwZGJjZGQ0/ZTRjN2I0ZGY1NDM4/LmpwZw',
    ],
  ),
  HomeModel(
    title: 'Classic House',
    area: 'Adyar',
    img: [
      'https://imgs.search.brave.com/VAoDVDLl1tuYlVhcAskxKgHtj1lRr5WdvTX3gZCHODs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9tZXN0cmF0b3Nw/aGVyZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDYv/MmFkLUJlYWNoLmpw/Zw',
      'https://imgs.search.brave.com/84fDrOzj4nZMd_-q3wuLpXyYCgMFZ3U1C8JaqgHq5n8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9s/dXh1cnktcG9vbC12/aWxsYS1zcGVjdGFj/dWxhci1jb250ZW1w/b3JhcnktZGVzaWdu/LWRpZ2l0YWwtYXJ0/LXJlYWwtZXN0YXRl/LWhvbWUtaG91c2Ut/cHJvcGVydHktZ2Vf/MTI1OC0xNTA3NDku/anBnP3NpemU9NjI2/JmV4dD1qcGc',
      'https://imgs.search.brave.com/mLbDFBlu2JJnA4dPmTrOYvTiC1RFAGVlCVjZfqH4rzE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2Y0L2E4/L2NhL2Y0YThjYTgz/ODVkMmFmYmY1NjE2/NzM5ZDVmZTM3Yjgx/LmpwZw',
      'https://imgs.search.brave.com/zi9DvhvzOBxmPnEv4rEUoyxtURiruLADK2woTGST3OY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzE4LzVi/LzMxLzE4NWIzMTU0/ZjZjNjQwZGJjZGQ0/ZTRjN2I0ZGY1NDM4/LmpwZw',
    ],
  ),
  HomeModel(
    title: 'Devin House',
    area: 'S Kolathur',
    img: [
      'https://imgs.search.brave.com/84fDrOzj4nZMd_-q3wuLpXyYCgMFZ3U1C8JaqgHq5n8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9s/dXh1cnktcG9vbC12/aWxsYS1zcGVjdGFj/dWxhci1jb250ZW1w/b3JhcnktZGVzaWdu/LWRpZ2l0YWwtYXJ0/LXJlYWwtZXN0YXRl/LWhvbWUtaG91c2Ut/cHJvcGVydHktZ2Vf/MTI1OC0xNTA3NDku/anBnP3NpemU9NjI2/JmV4dD1qcGc',
      'https://imgs.search.brave.com/VAoDVDLl1tuYlVhcAskxKgHtj1lRr5WdvTX3gZCHODs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9tZXN0cmF0b3Nw/aGVyZS5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDYv/MmFkLUJlYWNoLmpw/Zw',
      'https://imgs.search.brave.com/zi9DvhvzOBxmPnEv4rEUoyxtURiruLADK2woTGST3OY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzE4LzVi/LzMxLzE4NWIzMTU0/ZjZjNjQwZGJjZGQ0/ZTRjN2I0ZGY1NDM4/LmpwZw',
    ],
  ),
];
