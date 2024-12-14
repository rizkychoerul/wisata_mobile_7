import 'dart:math';

Random random = Random();
const description =
    'Tempat-tempat wisata menawarkan beragam pengalaman, masing-masing dengan pesona dan daya tarik yang unik. Dari lanskap alam yang memukau hingga landmark bersejarah, selalu ada sesuatu untuk setiap wisatawan. Wisata PesisirDestinasi seperti pantai tropis mengundang relaksasi dengan air yang jernih, sementara daerah pegunungan menawarkan jalur pendakian yang penuh petualangan dan pemandangan yang menakjubkan.';

class TravelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  TravelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<TravelDestination> listDestination = [
  // Rekommendasi Kuliner
  TravelDestination(
      id: 1,
      name: "Leupeut Goreng Cibodas Mantap wkwkwkwk",
      category: 'kuliner',
      image: [
        "https://th.bing.com/th/id/OIP.pzfFG31O8QLxCf60IQEDaAAAAA?rs=1&pid=ImgDetMain",
        "https://images.unsplash.com/photo-1723407877285-584e2d0053ab?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1650198147183-4a802821f1ed?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1603347194698-9a1e21af75c8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
  TravelDestination(
      id: 2,
      name: "Food name",
      category: 'kuliner',
      image: [
        "https://www.hargatiket.net/wp-content/uploads/2018/09/air-terjun-kebun-raya-cibodas.jpg",
        "https://images.unsplash.com/photo-1590074721515-4e511fa59bcb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1578923286994-be444ceded23?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1624104416015-f0ef71c7800a?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.9),
  TravelDestination(
      id: 3,
      name: "Food name",
      category: 'kuliner',
      image: [
        "https://tempatwisataunik.com/wp-content/uploads/2016/03/Taman-Nasional-Gunung-Gede-Pangrango.jpg",
        "https://images.unsplash.com/photo-1724258474555-1c850b2ccda6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1724257729114-57ac6110ba36?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1703769605328-01120ea51ee0?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Papua Barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.8),
  TravelDestination(
      id: 4,
      name: "Food name",
      category: 'kuliner',
      image: [
        "https://tempatwisataunik.com/wp-content/uploads/2016/03/Air-Terjun-Cibeureum-300x168.jpg",
        "https://images.unsplash.com/photo-1698799619978-872b701b44a8?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1566811851038-0580f1fb9082?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1664551577638-9a212d646b9b?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 100,
      description: description,
      rate: 4.7),

  // Rekomendasi Wisata
  TravelDestination(
      id: 5,
      name: "Kebun raya bogor",
      category: 'wisata',
      image: [
        "https://tempatwisataunik.com/wp-content/uploads/2016/03/Kebun-Raya-Bogor...-300x157.jpg",
        "https://images.unsplash.com/photo-1603725616907-82eb483d7dea?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1669454572059-380b4c13101c?q=80&w=2097&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1575242385452-44b445d98f34?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description: description,
      rate: 4.6),
  TravelDestination(
      id: 6,
      name: "Botanical garden",
      category: 'wisata',
      image: [
        "https://cianjurkuy.id/wp-content/uploads/2023/09/Menikmati-Keindahan-Alam-di-Wisata-Cibodas-Botanical-Garden.webp",
        "https://images.unsplash.com/photo-1623598122059-9b5ef17619c8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1724909627713-866347d7d00e?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1617414372548-1ce628263337?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Sumatera Utara, Indonesia',
      review: random.nextInt(250) + 20,
      price: 120,
      description: description,
      rate: 4.5),
  TravelDestination(
      id: 7,
      name: "Rumah Kaca",
      category: 'wisata',
      image: [
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/05/23/wisata-Cianjur-Kebun-Raya-Cibodas-3280187424.jpg",
        "https://images.unsplash.com/photo-1658642017201-45bb87756f1b?q=80&w=1962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1571755931207-3ede68df575a?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1504964030113-79ab61954f0e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description: description,
      rate: 4.7),
  TravelDestination(
      id: 8,
      name: "Cibodas camp and tour",
      category: 'wisata',
      image: [
        "https://th.bing.com/th/id/R.dc235aea9b975766a4b4fbe3288f334d?rik=xee%2b16L9StuSUA&riu=http%3a%2f%2fcibodascamptour.com%2fuserfiles%2fimages%2flayanantourlokasipariwisataCibodas%2flayanan+tour+lokasi+pariwisata+Cibodas+(2).JPG&ehk=evQV21Umc7gCIm%2bBejpfTRqB4RHEEkYe4q41vYqhDYI%3d&risl=&pid=ImgRaw&r=0",
        "https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1711786120068-63c4306d8d0d?q=80&w=1916&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1672128557444-da9340a253f0?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 200,
      description: description,
      rate: 4.7),
  TravelDestination(
      id: 9,
      name: "pibigbon camp",
      category: 'wisata',
      image: [
        "https://i.ytimg.com/vi/R8gbpK43CzQ/maxresdefault.jpg",
        "https://images.unsplash.com/photo-1512631911403-3e3a06d12389?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1620549146396-9024d914cd99?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1631340729644-8b8aad1e9dba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Jawa Tengah, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
];
