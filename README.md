Material.dart kütüphanesi, Flutter'da kullanıcı arayüzü öğeleri oluşturmak için kullanılan bir kütüphanedir. Bu kütüphane, przycisler, metin alanları, kaydırıcılar ve diğer birçok kullanıcı arayüzü öğesini içerir. Material.dart kütüphanesi, Flutter'ın temel kütüphanelerinden biridir ve Flutter uygulamalarının çoğunda kullanılır.

extends = uzat,miras bırak,aktar...
BuildContext = Diğer Widgetlarla şu şekilde iletişim kur...
context = widget ağacınndaki şu widgete eriş...

7-15 arasındaki kod satırları :

StatelessWidget = 1 defa oluştuğunda daha da içeriği değiştirilemeyen widget türü metin ve resim oluşturmak için kullanılır
Flutter'da StatelessWidget, uygulamanızda bir bileşen veya widget oluşturmak için kullanılan bir sınıftır. "Stateless" (durumsuz) olarak adlandırılır, çünkü bir kez oluşturulduğunda durumu değişmez ve değiştirilemez. Bu, widget'in bir kez oluşturulduğunda görünümünün veya içeriğinin değiştirilemeyeceği anlamına gelir.

CalculatorApp adlı bir statelessWidgett oluşturuyoruz ( yani değişmez widget )sonra onu düzeltmek için miras olarak aldığımız widgetı
@overrıde ile düzeltiyoruz

overrıde den sonra  Widget build(BuildContext context) komutuyla material appe dönüp home ı kendi oluşturacaığıız Calculatör yapıyoruz
yani uygulama açıldığında Calculatör widgetında başlatıcak

16-20 arasındaki kod satırları :

Statefulwidget = StatelessWidgetın değiştirilebilir versiyonudur değiştirmek için setState yöntemini kullanırız.. Siteye veri verme animasyonları değiştirme gibi şeylerde kullanırız...
 _ = bunu state türünün başına koyduğumuzda private yani gizli olduğu anlamına gelir.
classla yine değiştirme widgetini gösterdik ovverride ile miras alıp yazma işlemine geldik yazma işleminde ise güncelleme aşamasındayız 
widgetimizei güncellmek için Calculator widgetini state ile durumunu oluşturduk
 gösterirken _ ile gösterdik private olup sadece biz güncelleyebilelim
=> = return demek.

-----------------------------------------------------------------------PART-2-------------------------------------------------------
21-26 araasındaki kod satırları : 
<  > = State sınıflarını belirtmek için kullanırız...
ilk satırda aynı şeyleri yaptık yine classımızı miras aldık sonra onun durumunu değiştirdik ondan sonra boş bir ifadeyle başlatmak için " koyduk bu stringin boş olduğunu ifade eder 
ardından double kullanarak num1 ve num2 yi tanımladık çünkü ondalıklı sayılarda yazıcaz eğer intli değerler yazssaydık sadece direk num1 ve num2 yi tanımlayabilirdik....

strin _operotor kullanmamızın sebebi ise burdaki + - gibi işlem işaretleridir onları yazmak için boş bir dize olarak gösterdik 
!!!  bir şeyi stateli göstericeğin zaman başına _ koyarak private olduğunu belirt !!!

27-37 arasındaki satır kodları :
_Calculate = Hesapla demektir...
_onButtonPressed = Butona basıldığında...
_Calculate = Hesapla...
_setOperator(text) = işlemi texte ekle...
_appendToDisplay(text) = Sayıyı texte ekle...

41-45 arasındaki kod satırları :
aslında bizim burda yaptığımız appenToDisplay eklentisini yazmak o yüzden setState le davranışını değiştiriyoruz setState kullanmamaızın sebebi ise StatefulWidget olması...
yazdır olan _displayı alıp sayıya ekliyoruz yani aslında ilk sayı tamamlandı onu çıkarmaya yarıyor

47-53 arasındaki kod satırları:
_parse = dönütürme texti sayıya döndürme gibi...
bizim aslında burda yaptığımız _SetOperator kodunun davranışını yazmak _SetOperator bizim kodumuzdane yapyor opearerü koaymak o yüzden bunu koda dökücez buda statefulwidget olduğu için setState kullanmakk zorundayız setState in içine ilk olarak kullanıcıdan aldığımız operatörü kendi private operatörümüze eşitliyoruz ardından _num1 imizi de burda double.parse sayesinde ondalık sayya çeviriyurz ardından yazdırla _num1 e eşitliyoruz...Bir sonraki satırda ise yeni bir _display belirleyip '' çünkü ilk sayı ve operatör bitti.....


56-73 aralığındaki kod satırları :
switch = bir değişkeni farklı durumlarda ele almamıza sebep olur...
case = kesinse ifade eder...
double = veri türü, ondalık sayıları temsil etmek ve bu sayılar üzerinde matematiksel işlemler yapmak için kullanılan önemli bir veri türüdür.


kısacası part 2 de yapılanlar :
1-) _CalculatorState in boşluk  0 larını belirt.
2-) butona basılcığına neler olucağını yaz. yazma sırası : _celar , _setOperator , _calculate , _appendToDisplay
3-) butona basıldığında olucakları teker teker tanımla. tanımlama sırası _appendToDisplay , _setOperator, _calculate...
4-) 0 lama işlemlerini yaz sonra onları tanımla

Part 3 :
88 -145 arasındaki kod satırları :
başta @ovveride kullandık çünkü bu kodun güvenirliğini arttırır kullanmasakda olur...
Scaffold iskele demek artık uygulamanın mantıksal herşeyi bitmiş tasarıma başlanmış anlamına gelir,ve içindde bulunanlar şunlardır :
1-) Appbar (Üst çubuk) = uygulama adı gibi buton felan eklersin.
2-) Body(Gövde) = uygulamanın ana içeriğini belirler içinde herşey olur pagelar felan.
3-) BottomNavigationBar (Alt çubuk) = navigation barlar felan olur.
4-) FloatingActionButton = Bu, kullanıcının hızlıca bir eylemi gerçekleştirmesini sağlayan bir yüzen düğme olarak kullanılır. Örneğin, yeni bir öğe eklemek veya bir eylem gerçekleştirmek için kullanılabilir.
5-) Drawer (Çekmece Menüsü): Bu, ekstra navigasyon seçeneklerini veya uygulama ayarlarını içeren bir yan menüdür. Genellikle sola kaydırarak veya belirli bir düğmeye tıklayarak açılır.
6-) SnackBar: Kısa süreli bilgilendirme veya geri bildirim mesajlarını göstermek için kullanılır. Kullanıcıya bir işlem başarılı bir şekilde gerçekleştiğini veya bir hata meydana geldiğini bildirme amacı taşır.
const = sabit bir değere sabit demek olmsa yine de çalışırdı fakat kararlılık azalırdı...
edgeinstest = bulunduğu yerin çevresi yanına all ekleyince de (alt,üst.sağ.sol) tarafındaki tüm boşluklar
column = dikey demek uygulamamız dikey ekranda olucak yani...
child = içinde Container, Card, Column, Row, Center, Padding widgetları bulunduran bir widget...
fontsize = metnin boyutu 
fontweight = metnin kalınlığı
MainAxisAlignment = Minumum eksen hizalaması 
Row içine yazdığın şeyler sağdan sola şekilde eklenir
MainAxisAlignment.spaceEvenly = minimum eksen hizalamasında eşit boşluk bırak demektir...
children = Row, Column, ListView, Stack gibi widget'lar, birden çok çocuk widget'ını içerebilir. 
kıscası part 3 de yaptığımız şunlardır :
Scaffoldun içine appBar sonra body 