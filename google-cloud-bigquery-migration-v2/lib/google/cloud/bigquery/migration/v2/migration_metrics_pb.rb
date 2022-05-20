# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/migration_metrics.proto

require 'google/protobuf'

require 'google/api/distribution_pb'
require 'google/api/field_behavior_pb'
require 'google/api/metric_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/migration/v2/migration_metrics.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.migration.v2.TimeSeries" do
      optional :metric, :string, 1
      optional :value_type, :enum, 2, "google.api.MetricDescriptor.ValueType"
      optional :metric_kind, :enum, 3, "google.api.MetricDescriptor.MetricKind"
      repeated :points, :message, 4, "google.cloud.bigquery.migration.v2.Point"
    end
    add_message "google.cloud.bigquery.migration.v2.Point" do
      optional :interval, :message, 1, "google.cloud.bigquery.migration.v2.TimeInterval"
      optional :value, :message, 2, "google.cloud.bigquery.migration.v2.TypedValue"
    end
    add_message "google.cloud.bigquery.migration.v2.TimeInterval" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.bigquery.migration.v2.TypedValue" do
      oneof :value do
        optional :bool_value, :bool, 1
        optional :int64_value, :int64, 2
        optional :double_value, :double, 3
        optional :string_value, :string, 4
        optional :distribution_value, :message, 5, "google.api.Distribution"
      end
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module Migration
        module V2
          TimeSeries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TimeSeries").msgclass
          Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.Point").msgclass
          TimeInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TimeInterval").msgclass
          TypedValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TypedValue").msgclass
        end
      end
    end
  end
end