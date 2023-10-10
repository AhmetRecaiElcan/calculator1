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


21-26 araasındaki kod satırları : 
<  > = State sınıflarını belirtmek için kullanırız...
ilk satırda aynı şeyleri yaptık yine classımızı miras aldık sonra onun durumunu değiştirdik ondan sonra boş bir ifadeyle başlatmak için " koyduk bu stringin boş olduğunu ifade eder 
ardından double kullanarak num1 ve num2 yi tanımladık çünkü ondalıklı sayılarda yazıcaz eğer intli değerler yazssaydık sadece direk num1 ve num2 yi tanımlayabilirdik....

strin _operotor kullanmamızın sebebi ise burdaki + - gibi işlem işaretleridir onları yazmak için boş bir dize olarak gösterdik 
!!!  bir şeyi stateli göstericeğin zaman başına _ koyarak private olduğunu belirt !!!

27-37 arasındaki satır kodları :
voidle basıldığında oluşan döngüyü yazıyoruz String text bizim değişkenimiz 