import 'package:flutter/material.dart';           

class DetalleProductoPage extends StatefulWidget {
  const DetalleProductoPage({super.key, required this.id, this.extras});

  final String id;
  final Map? extras;

  @override
  _DetalleProductoPageState createState() => _DetalleProductoPageState();
}

class _DetalleProductoPageState extends State<DetalleProductoPage> {
  late String ChangeImage;
// Inicializar la variable antes que cargue la pantalla
  @override
  void initState() {
    super.initState();
    ChangeImage = widget.extras?['image'] ??
        'https://img.freepik.com/free-vector/glitch-error-404-page-background_23-2148083447.jpg?t=st=1741201077~exp=1741204677~hmac=7f4799125ec835eedf2222dc7a34eb8ac8a01acc5bedb2ac25473fb55d91b096&w=740';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
            
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(
                      ChangeImage,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Miniaturas de imágenes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _MiniImage(widget.extras?['image']),
                      SizedBox(width: 8),
                      _MiniImage(widget.extras?['image2']),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Rating y cantidad de reviews
                  Row(
                    children: [
                      Icon(Icons.star, color: const Color.fromARGB(255, 255, 152, 0), size: 20),
                      Text(
                        ' ${widget.extras?['rating']['rate']} ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${widget.extras?['rating']['count']} reviews',
                          style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  Text(
                    widget.extras?['title'] ,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  Text(
                    widget.extras?['description'] ,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFFF0F0F0), // Color más fuerte que el fondo
              
            ),
            child: Row(
              children: [
                // Precio del producto
                Text(
                  '\$${widget.extras?['price'] }',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    label: Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget para miniaturas de imagenes
  Widget _MiniImage(String? imageUrl) {
    String NullImage =
        'https://images.pexels.com/photos/30894725/pexels-photo-30894725/free-photo-of-bicicleta-antigua-de-ornate-architectural-doorway.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

    return InkWell(
      onTap: () {
        setState(() {
          ChangeImage = imageUrl ?? NullImage;
        });
      },
      child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20), 
          image: DecorationImage(
            image: NetworkImage(imageUrl ?? NullImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
