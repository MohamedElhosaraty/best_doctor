import 'package:best_doctor/feature/home/data/models/specializations_response_model.dart';
import 'package:best_doctor/feature/home/ui/widgets/doctor_specialization_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorSpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationDataList.length,
          itemBuilder: (context , index){
            return DoctorSpecializationListViewItem(
                specializationsData: specializationDataList[index],
                itemIndex: index);
          }
      ),
    );
  }
}
