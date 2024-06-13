import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_content_cubit/counter_cubit/cubit/view/counter/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int> (
          builder: (context, state){
            return Text('$state');
        },
        ),
      ),
        floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('counterView_increment_fab'),
              child: const Icon(Icons.add),
              onPressed: (){ //panggil CounterCubit.increment(), nambah +1
              context.read<CounterCubit>().increment();
              },
             ),
             FloatingActionButton(
              key: const Key('counterView_decrement_fab'),
              child: const Icon(Icons.remove),
              onPressed: (){ //panggil CounterCubit.increment(), nambah +1
              context.read<CounterCubit>().decrement();
              },
             ),
             FloatingActionButton(
              key: const Key('counterView_multiply_fab'),
              child: const Icon(Icons.clear),
              onPressed: (){ //panggil CounterCubit.increment(), nambah +1
              context.read<CounterCubit>().multiply();
              },
             ),
              FloatingActionButton(
                key: const Key('counterView_minus_2_fab'),
                child: const Icon(Icons.remove),
                onPressed: (){ //panggil CounterCubit.increment(), nambah +1
                context.read<CounterCubit>().minus_2();
                },
             ),
          ]
        ) //FloatingActionButton
    );
  }
}