# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/migration_entities.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/migration/v2/migration_error_details_pb'
require 'google/cloud/bigquery/migration/v2/migration_metrics_pb'
require 'google/cloud/bigquery/migration/v2/translation_config_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/error_details_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/migration/v2/migration_entities.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.migration.v2.MigrationWorkflow" do
      optional :name, :string, 1
      optional :display_name, :string, 6
      map :tasks, :string, :message, 2, "google.cloud.bigquery.migration.v2.MigrationTask"
      optional :state, :enum, 3, "google.cloud.bigquery.migration.v2.MigrationWorkflow.State"
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :last_update_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.bigquery.migration.v2.MigrationWorkflow.State" do
      value :STATE_UNSPECIFIED, 0
      value :DRAFT, 1
      value :RUNNING, 2
      value :PAUSED, 3
      value :COMPLETED, 4
    end
    add_message "google.cloud.bigquery.migration.v2.MigrationTask" do
      optional :id, :string, 1
      optional :type, :string, 2
      optional :state, :enum, 4, "google.cloud.bigquery.migration.v2.MigrationTask.State"
      optional :processing_error, :message, 5, "google.rpc.ErrorInfo"
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :last_update_time, :message, 7, "google.protobuf.Timestamp"
      oneof :task_details do
        optional :translation_config_details, :message, 14, "google.cloud.bigquery.migration.v2.TranslationConfigDetails"
      end
    end
    add_enum "google.cloud.bigquery.migration.v2.MigrationTask.State" do
      value :STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :ORCHESTRATING, 2
      value :RUNNING, 3
      value :PAUSED, 4
      value :SUCCEEDED, 5
      value :FAILED, 6
    end
    add_message "google.cloud.bigquery.migration.v2.MigrationSubtask" do
      optional :name, :string, 1
      optional :task_id, :string, 2
      optional :type, :string, 3
      optional :state, :enum, 5, "google.cloud.bigquery.migration.v2.MigrationSubtask.State"
      optional :processing_error, :message, 6, "google.rpc.ErrorInfo"
      repeated :resource_error_details, :message, 12, "google.cloud.bigquery.migration.v2.ResourceErrorDetail"
      optional :resource_error_count, :int32, 13
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :last_update_time, :message, 8, "google.protobuf.Timestamp"
      repeated :metrics, :message, 11, "google.cloud.bigquery.migration.v2.TimeSeries"
    end
    add_enum "google.cloud.bigquery.migration.v2.MigrationSubtask.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
      value :PAUSED, 5
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module Migration
        module V2
          MigrationWorkflow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationWorkflow").msgclass
          MigrationWorkflow::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationWorkflow.State").enummodule
          MigrationTask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationTask").msgclass
          MigrationTask::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationTask.State").enummodule
          MigrationSubtask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationSubtask").msgclass
          MigrationSubtask::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MigrationSubtask.State").enummodule
        end
      end
    end
  end
end