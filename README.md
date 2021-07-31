# IPFS Plugin for Flutter

A plugin library for the IPFS using HTTP API and Infura. The code is implemented in Dart and the plugin requires running IPFS daemon.

## How to use

Importing the package :
```
import 'package:dart_ipfs_client/dart_ipfs_client.dart';
```

Initializing :
```
var IPFS = Ipfs(url: 'http://127.0.0.1:5001');
```

Adding String as JSON :
```
var added = await ipfs.add(utf8.encode('Hello World!'));
```

Retrieving the JSON from IPFS :

```
var retrieved = await ipfs.cat(addRes.body.hash);
```

JSON Response will be similar :

```
{
  Bytes: null,
  Hash: <HASH-WILL-BE-HERE>
  Name: <HASH-WILL-BE-HERE>,
  Size: 20
}
{Body: Hello World!}
```

Feel free to open an issue for FEATURE REQUESTS / QUERIES. Contributions are welcome :)