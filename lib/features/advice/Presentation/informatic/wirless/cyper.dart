import 'package:emplooo/features/advice/Presentation/informatic/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class Cyper extends StatelessWidget {
  const Cyper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'أفضل كورسات بتوصية مطورين',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ).animate().scaleX(),
              SizedBox(
                height: 50,
              ),
              Course(
                image: 'assets/images/cyber1.jpg',
                uri:
                    "https://www.youtube.com/watch?v=VyXQ8CMIQl4&list=PLh2Jy0nKL_j1WZMzITHgUuzaadpSULlMm",
                text: 'Watch this course to develop yourself',
              ),
              SizedBox(
                height: 20,
              ),
              Course(
                uri:
                    "https://www.bing.com/aclk?ld=e89j__2F5UBsq3D_5gkf6d0TVUCUxeAuLSwjCEVlT4q70o3QyHoHIOhhKLE3q1LV0Lh0AzRSPs3fbIpgL4Iwlvouk1kGSkGNeNMBEf2ijGvVZeal6A2et6m5w79X1UwfsXyiHNEjj3rIBsL2nkB8g2jwD6zDDChSQ8583mmayB5OnqQP_ipYe9eYdxLboobu1jgQM50A&u=aHR0cHMlM2ElMmYlMmZ3d3cucGhvZW5peC5lZHUlMmZpbmZvJTJmY3liZXJzZWN1cml0eS5odG1sJTNmY2hhbm5lbCUzZHNyY2glMjZta3RnX3Byb2clM2RJU1QlMjZrZXl3b3JkJTNkJTI1MkJjeWJlciUyNTIwJTI1MkJzZWN1cml0eSUyNTIwJTI1MkJwcm9ncmFtJTI2dXNlcjIlM2Rub25icmFuZCUyNnB2cF9jYW1wYWlnbiUzZDE2MDEyNl80ODg3XzlfOTUlMjZwcm92aWRlciUzZGJpbmclMjZzX2t3Y2lkJTNkQUwhMTEzMDghMyEhYiEhbyEhJTI1MkJjeWJlciUyNTIwJTI1MkJzZWN1cml0eSUyNTIwJTI1MkJwcm9ncmFtJTI2YWlkJTNkOTI0MTEwMTUwNCUyNmNpZCUzZDI4Mzg1MDU4MSUyNmFkZ2lkJTNkMTI0MjQ0ODYxODg4MzMxMiUyNm1zY2xraWQlM2RiZWFhOTQyZWY4ZWExMjg1MTViMGYyNTFiZTE5MmY0NiUyNmdjbGlkJTNkYmVhYTk0MmVmOGVhMTI4NTE1YjBmMjUxYmUxOTJmNDYlMjZnY2xzcmMlM2QzcC5kcyUyNnV0bV9zb3VyY2UlM2RiaW5nJTI2dXRtX21lZGl1bSUzZGNwYyUyNnV0bV9jYW1wYWlnbiUzZEN5YmVyJTI1MjBTZWN1cml0eSUyNTIwLSUyNTIwTmV3JTI2dXRtX3Rlcm0lM2QlMjUyQmN5YmVyJTI1MjAlMjUyQnNlY3VyaXR5JTI1MjAlMjUyQnByb2dyYW0lMjZ1dG1fY29udGVudCUzZEN5YmVyJTI1MjBTZWN1cml0eSUyNTIwUHJvZ3JhbQ&rlid=beaa942ef8ea128515b0f251be192f46&ntb=1",
                image: 'assets/images/book.jpg',
                text: '"Read this book to develop yourself"',
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
