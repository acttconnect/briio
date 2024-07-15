import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key, required this.filters});

  final Filters filters;

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  late Filters? filters;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    filters = widget.filters;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const Text('Filters')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Weight",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " (in grams)",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      // initialValue: filters?.weightFrom.toString(),
                      decoration: const InputDecoration(
                        labelText: "From",
                        hintText: "0",
                        contentPadding: EdgeInsets.zero,
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (newValue) {
                        setState(() {
                          filters = filters?.copyWith(
                              weightFrom: int.parse(newValue!));
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      // initialValue: filters?.weightTo.toString(),
                      decoration: const InputDecoration(
                        labelText: "To",
                        hintText: "0",
                        contentPadding: EdgeInsets.zero,
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (newValue) {
                        setState(() {
                          filters =
                              filters?.copyWith(weightTo: int.parse(newValue!));
                        });
                      },
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 30),
              Text(
                "No. of Pieces",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                // initialValue: filters?.numberOfPieces.toString(),
                decoration: const InputDecoration(
                  hintText: "0",
                  contentPadding: EdgeInsets.zero,
                ),
                keyboardType: TextInputType.number,
                onSaved: (newValue) {
                  setState(() {
                    filters =
                        filters?.copyWith(numberOfPieces: int.parse(newValue!));
                  });
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Get.back(result: filters);
                    }
                  },
                  child: const Text("Apply Filters"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Filters {
  final int weightFrom;
  final int weightTo;
  final int numberOfPieces;

  Filters({
    this.weightFrom = 10,
    this.weightTo = 100,
    this.numberOfPieces = 4,
  });

  //Copy With
  Filters copyWith({
    int? weightFrom,
    int? weightTo,
    int? numberOfPieces,
  }) {
    return Filters(
      weightFrom: weightFrom ?? this.weightFrom,
      weightTo: weightTo ?? this.weightTo,
      numberOfPieces: numberOfPieces ?? this.numberOfPieces,
    );
  }
}
