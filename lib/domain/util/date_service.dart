import 'package:injectable/injectable.dart';

@Injectable()
class DateService {
  DateTime get currentDateTime => DateTime.now();
}