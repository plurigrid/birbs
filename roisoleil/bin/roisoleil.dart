import "package:alan/alan.dart";
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as staking;

Future<staking.QueryValidatorsResponse> _validatorQuery(channel) async {
  final stakingClient = staking.QueryClient(channel);
  print("starting query");
  final pagination = PageRequest.create()
    ..limit = 100.toInt64()
    ..offset = 0.toInt64();
// Query the gRPC
  final response = await stakingClient.validators(
    staking.QueryValidatorsRequest.create()..pagination = pagination,
    // ..status = status
  );
  print("done query");
  print(response);
  return response;
}

void main() {
  final networkInfo = NetworkInfo.fromSingleHost(
    bech32Hrp: "juno",
    host: "35.243.205.230:9090",
    // bech32Hrp: "cosmos",
    // host: "https://rpc.cosmos.smartnodes.one",
    // bech32Hrp: "desmos",
    // host: "https://rpc-desmos.itastakers.com",
    // bech32Hrp: "desmos",
    // host: "localhost",
  );
  final channel = networkInfo.gRPCChannel;
  final resp = _validatorQuery(channel).then((resp) {
    print(resp);
  });
  print(resp);
}
