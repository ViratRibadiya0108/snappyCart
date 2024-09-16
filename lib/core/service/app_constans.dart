import 'package:snappycart/core/service/app_strings.dart';
import 'package:snappycart/domain/onbording/onbording_model.dart';

class AppConstans {
  static const onbordingSlide = <OnboardingSlideModel>[
    OnboardingSlideModel(
        image:
            'https://images.unsplash.com/photo-1560884392-a636e0722bc4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHNob3BwaW5nJTIwZ2lybHxlbnwwfDF8MHx8fDA%3D',
        label: AppStrings.discover,
        subTitle: AppStrings.sdiscover),
    OnboardingSlideModel(
        image:
            'https://images.unsplash.com/flagged/photo-1559502858-8041d0747820?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHNob3BwaW5nJTIwZ2lybHxlbnwwfDF8MHx8fDA%3D',
        label: AppStrings.update,
        subTitle: AppStrings.supdate),
    OnboardingSlideModel(
        image:
            'https://plus.unsplash.com/premium_photo-1664202526132-7da09cfeb243?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDV8fHNob3BwaW5nJTIwZ2lybHxlbnwwfDF8MHx8fDA%3D',
        label: AppStrings.explore,
        subTitle: AppStrings.sexplore)
  ];
}

class AppConstansWeb {
  static const onbordingSlideweb = <OnboardingSlideModelweb>[
OnboardingSlideModelweb(image: 'https://images.unsplash.com/photo-1724184888115-e76e42f53dcc?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
OnboardingSlideModelweb(image: 'https://images.unsplash.com/photo-1646510271817-0f185029264d?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
OnboardingSlideModelweb(image: 'https://images.unsplash.com/photo-1679136341718-1d1917b7f921?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),

  ];
}
