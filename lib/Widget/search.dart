import 'package:flutter/material.dart';

Widget searchBar()
{
  return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(

                        // fillColor: Colors.white,
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.all(8)),
                    onSubmitted: (value) {
                      
                    },
                  ),
                ),
              );
}