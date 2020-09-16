import 'package:jitsi_meet/feature_flag/feature_flag_enum.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import '../model/confrence.dart';

class ConfrenceService {
  Confrence details;
  ConfrenceService({Confrence instance}) {
    this.details = instance;
  }
  Map<FeatureFlagEnum,bool>  feature={
    FeatureFlagEnum.INVITE_ENABLED:false,
  };
  connect() async {
    JitsiMeetingOptions options = JitsiMeetingOptions();
    print(details.room);
    options.userEmail = details.email_id;
    options.room = details.room;
options.featureFlags.addAll(feature);
    options.userDisplayName = details.display_name;
    await JitsiMeet.joinMeeting(options);
  }
}
