#!/usr/bin/env bash
set -ex

aws s3 sync --quiet resources s3://${AWS_BUCKET_NAME}
aws s3 sync --quiet resources/payment_methods s3://${AWS_BUCKET_NAME}/payment-methods
aws s3 sync --quiet resources/payout_methods s3://${AWS_BUCKET_NAME}/payout-methods
aws s3 sync --quiet resources/payment_providers s3://${AWS_BUCKET_NAME}/payment-providers
