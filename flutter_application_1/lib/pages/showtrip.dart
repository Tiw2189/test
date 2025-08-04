import 'package:flutter/material.dart';

class ShowTripPage extends StatefulWidget {
  const ShowTripPage({super.key});

  @override
  State<ShowTripPage> createState() => _ShowTripPageState();
}

class _ShowTripPageState extends State<ShowTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('รายการทริป'),),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column( mainAxisAlignment: MainAxisAlignment.start,
              children: [Row(
                children: [
                  Text('รายการทริป'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    FilledButton(onPressed: () {
                          
                        }, child: Text('ทั้งหมด')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('เอเชีย')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('ยุโรป')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('อาเซียน')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('ทั้งหมด')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('ทั้งหมด')),
                    FilledButton(onPressed: () {
                          
                        }, child: Text('ทั้งหมด')),
                  ],
                ),
              ),
              SizedBox(child: Column(
                children: [
                  
                ],
              ),),         
              ],
            ),
          ),
        ),
      ),
    );
  }
}