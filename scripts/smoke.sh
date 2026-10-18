#!/usr/bin/env bash
# Builds the SDK and calls the live API: a public endpoint, a form POST,
# and an authenticated one with a bad key (which must fail with 401/403).
set -euo pipefail
cd "$(dirname "$0")/.."
composer install --no-interaction --no-progress --quiet
php smoke/smoke.php
