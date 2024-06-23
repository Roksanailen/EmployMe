import 'package:emplooo/core/enums/request_status.dart';
import 'package:emplooo/features/search/presentation/aichances.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/search_bloc.dart';

class Search extends StatefulWidget {
  const Search({
    Key? key,
    this.keyword,
  }) : super(key: key);
  final String? keyword;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  void didChangeDependencies() {
    if (widget.keyword != null) {
      context.read<SearchBloc>().add(SearchAiEvent(keyWord: widget.keyword!));
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: widget.keyword == null
              ? null
              : AppBar(
                  elevation: 25,
                  toolbarHeight: MediaQuery.sizeOf(context).height * .05,
                  actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Information()));
                          },
                          child: const Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 600,
                    width: 600,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: switch (state.status) {
                          RequestStatus.success => GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                crossAxisCount: 2,
                              ),
                              itemCount: state.jobs.length,
                              itemBuilder: (BuildContext context, int index) {
                                return AiChances(
                                  job: state.jobs[index],
                                );
                              }),
                          RequestStatus.loading => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          RequestStatus.fail => const Center(
                              child: Text(
                                'There are no job opportunities belongs to this category Right Now',
                              ),
                            ),
                          _ => const Center(child: Text('SearchScreen'))
                        },
                      ),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
