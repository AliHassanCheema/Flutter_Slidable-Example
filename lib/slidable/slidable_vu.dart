import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:stacked/stacked.dart';

import 'slidable_vm.dart';

class SlidableScreen extends ViewModelBuilderWidget<SlidableViewModel> {
  const SlidableScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, SlidableViewModel viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter_Slidable Example'),
        ),
        body: ListView.builder(
          itemCount: viewModel.items.length,
          itemBuilder: (context, index) {
            return Slidable(
                key: const ValueKey(0),
                startActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: DismissiblePane(onDismissed: () {}),
                  children: [
                    SlidableAction(
                      onPressed: (context) {
                        viewModel.onDelete(context, index);
                      },
                      backgroundColor: const Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    const SlidableAction(
                      onPressed: null,
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.close,
                      label: 'Close',
                    ),
                  ],
                ),
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: null,
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                    ),
                  ],
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    child: Text(index.toString()),
                  ),
                  title: Text('${viewModel.items[index]} ${index + 1}'),
                  subtitle: const Text('Slide left or right for Options'),
                ));
          },
        ),
      ),
    );
  }

  @override
  SlidableViewModel viewModelBuilder(BuildContext context) {
    return SlidableViewModel();
  }
}






//  children: [
//             Slidable(
//               key: const ValueKey(0),
//               startActionPane: ActionPane(
//                 motion: const ScrollMotion(),
//                 dismissible: DismissiblePane(onDismissed: () {}),
//                 children: const [
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFFFE4A49),
//                     foregroundColor: Colors.white,
//                     icon: Icons.delete,
//                     label: 'Delete',
//                   ),
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFF21B7CA),
//                     foregroundColor: Colors.white,
//                     icon: Icons.share,
//                     label: 'Share',
//                   ),
//                 ],
//               ),
//               endActionPane: const ActionPane(
//                 motion: ScrollMotion(),
//                 children: [
//                   SlidableAction(
//                     flex: 2,
//                     onPressed: null,
//                     backgroundColor: Color(0xFF7BC043),
//                     foregroundColor: Colors.white,
//                     icon: Icons.archive,
//                     label: 'Archive',
//                   ),
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFF0392CF),
//                     foregroundColor: Colors.white,
//                     icon: Icons.save,
//                     label: 'Save',
//                   ),
//                 ],
//               ),
//               child: const ListTile(title: Text('Slide me')),
//             ),
//             Slidable(
//               key: const ValueKey(1),
//               startActionPane: const ActionPane(
//                 motion: ScrollMotion(),
//                 children: [
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFFFE4A49),
//                     foregroundColor: Colors.white,
//                     icon: Icons.delete,
//                     label: 'Delete',
//                   ),
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFF21B7CA),
//                     foregroundColor: Colors.white,
//                     icon: Icons.share,
//                     label: 'Share',
//                   ),
//                 ],
//               ),
//               endActionPane: ActionPane(
//                 motion: const ScrollMotion(),
//                 dismissible: DismissiblePane(onDismissed: () {}),
//                 children: const [
//                   SlidableAction(
//                     flex: 2,
//                     onPressed: null,
//                     backgroundColor: Color(0xFF7BC043),
//                     foregroundColor: Colors.white,
//                     icon: Icons.archive,
//                     label: 'Archive',
//                   ),
//                   SlidableAction(
//                     onPressed: null,
//                     backgroundColor: Color(0xFF0392CF),
//                     foregroundColor: Colors.white,
//                     icon: Icons.save,
//                     label: 'Save',
//                   ),
//                 ],
//               ),
//               child: const ListTile(title: Text('Slide me')),
//             ),
//           ],
        
