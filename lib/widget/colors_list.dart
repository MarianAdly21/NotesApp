import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.isChoosed, required this.colorChoose});
  final bool isChoosed;
  final Color colorChoose;
  @override
  Widget build(BuildContext context) {
    return isChoosed
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: colorChoose,
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: colorChoose,
          );
  }
}

class ListOfColors extends StatefulWidget {
  const ListOfColors({super.key});

  @override
  State<ListOfColors> createState() => _ListOfColorsState();
}

class _ListOfColorsState extends State<ListOfColors> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                  setState(() {});
                },
                child: ColorItem(
                  colorChoose: kColors[index],
                  isChoosed: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
