import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:best_doctor/feature/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  final List<Doctors?>? doctorList;
  const DoctorListView({super.key,required this.doctorList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: doctorList?.length,
            itemBuilder: (context , index) {
              return DoctorListViewItem(
                  doctorsModel: doctorList?[index]);
            })
    );
  }
}
