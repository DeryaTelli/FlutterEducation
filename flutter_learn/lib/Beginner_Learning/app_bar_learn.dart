import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String title = 'AppBar Example';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        //appbarin sayfaya gore onde kalmasini ayarlayan ozellik
        elevation: 0,
        //abbbar ustunde kalan bolgenin yani status barin  ayarlamasini yapar
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // sol tarafdaki iconun yerini ayarlamamiza yardimci oluyor
        leadingWidth: 40,
        leading: const Icon(Icons.chevron_left),
        //flutter otomatik back butonunu ayarladigi icin onu bu ozelligini bu sekilde kapatabiliriz 
        automaticallyImplyLeading: false, 
        //sag taraftaki iconun rengini size gibi ozelliklerini ayarliyor
        actionsIconTheme: IconThemeData(
          color: Colors.red,
          size: 30,
        ),
        actions: [
          //appbarin saga tarafini kullanir
          //ToolbarTextStyle buda app barin sag tarafina yazilan yazilarin renklerini ayarlar TextStyle widget alir
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email),
          ),
          //yukleniyor ifadesini gosterir tam yuvarla olmasi icin center icine aliriz
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
