import 'package:dars88_upload_download/data/models/file_model.dart';
import 'package:flutter/material.dart';

class FileRepository {
  final List<FileModel> _files = [
    FileModel(
      id: 1,
      rasim:"assets/sariqdev.png",
      title: "SARIQ DEVNI MINIB",
      malumod:"  O'zbekiston xalq yozuvchisi, bolalarning sevimli adibi Xudoyberdi To'xtaboyevning asalari nafaqat respublikamizda, balki chetellarda ham ma'lum va mashhurdir. Qo'lingizdagi “Sariq devni minib” sarguzasht romani bolalar hayotidan olib yozilgan bo'lib, ularning sevimli kitoblaridandir. Bu asarda orzu-havasga eltadigan chinakam yo'l halol mehnat, yaxshi xulq-odob va qunt bilan o'qishda ekanligi ta'kidlanadi.",
      url:
          "https://quvonch-books.uz/storage/uploads/files/sariq_devni_minib_roman.pdf",
    ),
    FileModel(
      id: 2,
      rasim:"assets/image.png",
      title: "Harry Potter",
      malumod:"Harry Potter romanlari turkumining birinchisi boʻlmish Harry Potter va hikmatlar toshi 1997-yil 26-iyunda chiqarildi. Roman umumjahon boʻylab mashhurlikka erishdi, tanqidchilar tomonidan ijobiy baholandi hamda tijorat jihatdan muvaffaqiyat qozondi. 2018-yilning fevraliga koʻra, Harry Potter romanlari toʻplami butun dunyo boʻylab 500 milliondan oshiq nusxada sotilgan boʻlib, buning ortidan hamma vaqtlarning eng koʻp sotilgan kitoblar toʻplami boʻldi.[1] Shuningdek, shu kungacha ushbu romanlar toʻplami saksonta tilga tarjima qilingan. Toʻplamning oxirgi toʻrttasi ketma-ket tarzda eng tez sotilgan kitob oʻlaroq rekord oʻrnatdi. Toʻplamning oxirgisi boʻlmish Harry Potter va ajal tuhfalari romani Buyuk Britaniyada 2.7 million nusxada, AQShda esa 8.3 million nusxada sotilgan",
      url:
          "https://vidyaprabodhinicollege.edu.in/VPCCECM/ebooks/ENGLISH%20LITERATURE/Harry%20potter/(Book%207)%20Harry%20Potter%20And%20The%20Deathly%20Hallows.pdf",
    ),
    FileModel(
      id: 3,
      rasim:"assets/shumbola.png",
      title: "Shum bola",
      malumod:"Shum bola — oʻzbek yozuvchisi va shoiri Gʻafur Gʻulom qalamiga mansub qissa. Muallif asarni 1936-yil yozgan. Qissa bir necha marta nashr qilingan. Qissada ijodkorning bolaligi, 20-asr boshidagi Toshkent hayoti tasvirlangan. Qissa oʻtkir hajviy asar boʻlib, haqiqiy voqealar va shaxslar taqdiriga asoslangan. Asar markazida yozuvchining hayotidan olingan koʻp faktlar turgan boʻlsa-da, u avtobiografik emas. Unda haqiqiy tarixiy faktlarga nisbatan badiiy toʻqima, fantaziya kuchli",
      url:
          "https://kitobsevar.uz/kxpv/xrpt_obvc36ku52v0mpvo1bd5hf4ey8mlxk4cmofejp1ehkeu210r3dl0ifd7cri14b3fp8k2na6vlaf.pdf",
    ),
    FileModel(
      id: 4,
      rasim:"assets/otgankun.png",
      title: "O'tkan kunlar",
      malumod:"Oʻtkan kunlar, baʼzi manbalarda Oʻtgan kunlar – oʻzbek yozuvchisi Abdulla Qodiriy qalamiga mansub oʻzbek adabiyotidagi ilk roman[1]. 1969-yil „Oʻzbekfilm“ kinostudiyasida ushbu roman asosida „Oʻtgan kunlar“ nomli film suratga olingan. Adib romanni yozishda arab yozuvchisi Jurji Zaydon asarlaridan ilhomlangan. Roman 1920-yillar boshida yozilgan boʻlib, 1922-yil ilk bor „Inqilob“ jurnalida chop etilgan va 1926-yilda alohida kitob holida nashr etilgan",
      url:
          "https://staff.tiiame.uz/storage/users/425/books/5lcM0m3tEjK8U3xHODI01szqz0aeUV3mVhRz2nlh.pdf",
    ),
  ];

  List<FileModel> getFiles() {
    return [..._files];
  }
}

