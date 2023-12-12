import 'package:google_maps/google_maps.dart' show LatLng;
import 'package:uwifi_map_services_acp/models/domain/repositories/geocode_repository.dart';
import 'package:uwifi_map_services_acp/models/geocode.dart';
import 'package:uwifi_map_services_acp/providers/remote/geocode_api.dart';

class GeocodeRepositoryImpl implements GeocodeRepository {
  final GeocodeAPI _geocodeAPI;

  GeocodeRepositoryImpl(this._geocodeAPI);

  @override
  void cancel() {
    _geocodeAPI.cancel();
  }

  @override
  void dispose() {
    _geocodeAPI.dispose();
  }

  @override
  Future<Geocode?> geocode({
    required String street,
    String? city,
    String? state,
    required String zipcode,
  }) {
    return _geocodeAPI.geocode(
      street: street,
      city: city,
      state: state,
      zipcode: zipcode,
    );
  }

  @override
  void revGeocode(String query, LatLng at) {}
}
