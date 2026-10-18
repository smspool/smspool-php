#!/usr/bin/env bash
# Sets the package metadata Packagist shows. The generator would use the API
# spec's intro text as the description and its own name as keywords, and it
# writes a "version" field, which Packagist says to leave out (versions come from tags).
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - composer.json <<'PY'
import json, sys
path = sys.argv[1]
data = json.load(open(path))
data.pop("version", None)
data["description"] = "Official PHP client for the SMSPool API: SMS verification numbers, rentals, pre-orders and eSIMs."
data["keywords"] = ["smspool", "sms", "sms-verification", "otp", "phone-verification", "api", "sdk"]
data["homepage"] = "https://api.smspool.net/docs"
data["authors"] = [{"name": "SMSPool", "homepage": "https://www.smspool.net"}]
data["support"] = {"issues": "https://github.com/smspool/smspool-php/issues", "docs": "https://api.smspool.net/docs"}
with open(path, "w") as f:
    json.dump(data, f, indent=4, ensure_ascii=False)
    f.write("\n")
PY
