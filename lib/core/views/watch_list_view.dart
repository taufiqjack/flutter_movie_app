import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/common/bloc/widgets/loading_widget.dart';
import 'package:flutter_movie_app/common/constans/custom_color.dart';
import 'package:flutter_movie_app/core/constants/constant.dart';
import 'package:flutter_movie_app/core/hive/main_storage.dart';
import 'package:flutter_movie_app/features/bloc/cctv_data/cctv_diy_cubit.dart';
import 'package:video_player/video_player.dart';

class WatchListView extends StatefulWidget {
  const WatchListView({super.key});

  @override
  State<WatchListView> createState() => _WatchListViewState();
}

class _WatchListViewState extends State<WatchListView> {
  final videoController = VideoPlayerController.networkUrl(Uri.parse(
      'https://mam.jogjaprov.go.id:1937/atcs-kota/KMNol.stream/chunklist_w1508605635.m3u8'));

  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      videoPlayerController: videoController,
      autoPlay: true,
      autoInitialize: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    chewieController!.dispose();
    videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Watch list',
            style: TextStyle(color: white),
          ),
          centerTitle: true,
        ),
        backgroundColor: bluetwo,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: moviesDetail?.get(MOVIESDETAIL) != null
              ? Text(
                  '${moviesDetail!.get(MOVIESDETAIL)}',
                  style: TextStyle(color: white),
                )
              : BlocBuilder<CctvDiyCubit, CctvDiyState>(
                  bloc: CctvDiyCubit()..getCcTv(),
                  builder: (context, state) {
                    return state.when(
                      initial: () => const BuildLoadingWidget(),
                      loading: () => const BuildLoadingWidget(),
                      error: (error) => Center(
                        child: Text(
                          error,
                          style: TextStyle(color: white),
                        ),
                      ),
                      success: (cctvData) => Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: ListView.builder(
                              itemCount: cctvData.data!.length,
                              itemBuilder: (context, index) => Text(
                                '${cctvData.data![index].links!.self}',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3,
                            child: Chewie(controller: chewieController!),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ))));
  }
}
