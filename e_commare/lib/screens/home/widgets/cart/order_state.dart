import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class OrderState extends StatefulWidget {
  const OrderState({super.key});

  @override
  State<OrderState> createState() => _OrderStateState();
}

class _OrderStateState extends State<OrderState> {
  int _currentStep = 0;
  List<Step> stepList() => [
    Step(
      title: Text('Order Completed'),
      content: Center(child: Text('Confirm')),
      isActive: _currentStep >= 0,
      stepStyle: StepStyle(color: green, connectorColor: green),
    ),
    // Step(title: Text('Order Arrived'), content: Center(child: Text('Yor order has arrived'))),
    Step(title: Text('Order Sent'), content: Center(child: Text('Confirm'))),
    const Step(
      title: Text('Ready to Pickup'),
      content: Center(child: Text('Yor order is ready to be picked up by the courier')),
    ),
    const Step(
      title: Text('Order Processed'),
      content: Center(child: Text('or order is being Processed')),
    ),
    const Step(
      title: Text('Payment Received'),
      content: Center(child: Text('Payment has been received')),
    ),
    const Step(
      title: Text('Order Placed'),
      content: Center(child: Text('We have received your order')),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stepper(steps: stepList()));
  }
}
