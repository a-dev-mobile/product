// import 'package:dialysis/app/app.dart';
// import 'package:dialysis/enum.dart';
// import 'package:dialysis/feat/search/search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SortBottomSheet extends StatelessWidget {
//   const SortBottomSheet({
//     super.key,
//     required this.cubit,
//   });
//   final SortCubit cubit;

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       children: [
//         ListTile(
//           title: Text(
//             'Сортировка',
//             style: AppTextStyle.headline5(),
//           ),
//           trailing: IconButton(
//             icon: const Icon(Icons.close),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ),
//         const Divider(),
//         _SortItem(
//           nutrient: ColNameNutrientEnum.product,
//           text: cubit.getDescColumn(ColNameNutrientEnum.product),
//           cubit: cubit,
//         ),
//         _SortItem(
//           nutrient: ColNameNutrientEnum.calorie,
//           text: cubit.getDescColumn(ColNameNutrientEnum.calorie),
//           cubit: cubit,
//         ),
//         _SortItem(
//           nutrient: ColNameNutrientEnum.k_potassium,
//           text: cubit.getDescColumn(ColNameNutrientEnum.k_potassium),
//           cubit: cubit,
//         ),
//         _SortItem(
//           nutrient: ColNameNutrientEnum.water,
//           text: cubit.getDescColumn(ColNameNutrientEnum.water),
//           cubit: cubit,
//         ),
//         _SortItem(
//           nutrient: ColNameNutrientEnum.na_sodium,
//           text: cubit.getDescColumn(ColNameNutrientEnum.na_sodium),
//           cubit: cubit,
//         ),
//       ],
//     );
//   }
// }

// class _SortItem extends StatelessWidget {
//   const _SortItem({
//     required this.text,
//     required this.nutrient,
//     required this.cubit,
//   });
//   final SortCubit cubit;
//   final String text;
//   final ColNameNutrientEnum nutrient;
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SortCubit, SortState>(
//       // buildWhen: (p, c) => c.nutrient == nutrient,
//       bloc: cubit,
//       builder: (context, state) {
//         return Stack(
//           alignment: AlignmentDirectional.center,
//           children: [
//             RadioListTile<ColNameNutrientEnum>(
//               groupValue: state.columnSort,
//               value: nutrient,
//               title: Text(
//                 text,
//               ),
//               onChanged: (value) =>
//                   cubit.changeSortNutrient(colNameEnum: value),
//             ),
//             Visibility(
//               visible: state.columnSort == nutrient,
//               child: Align(
//                 alignment: Alignment.bottomRight,
//                 child: IconButton(
//                   onPressed: () =>
//                       cubit.changeSortAscDecs(sortEnum: state.sortAscDesc),
//                   icon: SvgPicture.asset(
//                     state.sortAscDesc == SortAscDescEnum.desc
//                         ? 'assets/svg/sort_desc.svg'
//                         : 'assets/svg/sort_asc.svg',
//                     color: Theme.of(context).textTheme.bodyText2!.color,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
