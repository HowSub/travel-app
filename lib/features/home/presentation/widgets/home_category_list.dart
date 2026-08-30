import 'package:flutter/material.dart';
import 'package:travel/features/home/data/models/category_list_model.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({super.key});

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  final List<CategoryListModel> categoryList = [
    CategoryListModel(categoryText: 'Most Viewed', id: 1),
    CategoryListModel(categoryText: 'Nearby', id: 2),
    CategoryListModel(categoryText: 'Latest', id: 3),
    CategoryListModel(categoryText: 'Cheap', id: 4),
  ];

  int selectedId = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categoryList[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedId = category.id;
              });
            },
            child: Container(
              height: 54,
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 18),
              decoration: BoxDecoration(
                color: selectedId == category.id
                    ? Color(0xFF2F2F2F)
                    : Color(0xFFFBFBFB),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  selectedId == category.id
                      ? BoxShadow(
                          color: Color(0x1A000000),
                          spreadRadius: 7,
                          blurRadius: 19,
                        )
                      : BoxShadow(
                          color: Color(0x1AFFFFFF),
                          spreadRadius: 0,
                          blurRadius: 0,
                        ),
                ],
              ),
              child: Text(
                category.categoryText,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: selectedId == category.id
                      ? Color(0xFFFFFFFF)
                      : Color(0xFFC5C5C5),
                  fontWeight: .w500,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 25),
        itemCount: categoryList.length,
      ),
    );
  }
}
