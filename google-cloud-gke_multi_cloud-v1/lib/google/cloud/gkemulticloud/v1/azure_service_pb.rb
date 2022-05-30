# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkemulticloud/v1/azure_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkemulticloud/v1/azure_resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gkemulticloud/v1/azure_service.proto", :syntax => :proto3) do
    add_message "google.cloud.gkemulticloud.v1.CreateAzureClusterRequest" do
      optional :parent, :string, 1
      optional :azure_cluster, :message, 2, "google.cloud.gkemulticloud.v1.AzureCluster"
      optional :azure_cluster_id, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.gkemulticloud.v1.UpdateAzureClusterRequest" do
      optional :azure_cluster, :message, 1, "google.cloud.gkemulticloud.v1.AzureCluster"
      optional :validate_only, :bool, 2
      optional :update_mask, :message, 4, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.gkemulticloud.v1.GetAzureClusterRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureClustersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureClustersResponse" do
      repeated :azure_clusters, :message, 1, "google.cloud.gkemulticloud.v1.AzureCluster"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.gkemulticloud.v1.DeleteAzureClusterRequest" do
      optional :name, :string, 1
      optional :allow_missing, :bool, 2
      optional :validate_only, :bool, 3
      optional :etag, :string, 4
    end
    add_message "google.cloud.gkemulticloud.v1.CreateAzureNodePoolRequest" do
      optional :parent, :string, 1
      optional :azure_node_pool, :message, 2, "google.cloud.gkemulticloud.v1.AzureNodePool"
      optional :azure_node_pool_id, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.gkemulticloud.v1.UpdateAzureNodePoolRequest" do
      optional :azure_node_pool, :message, 1, "google.cloud.gkemulticloud.v1.AzureNodePool"
      optional :validate_only, :bool, 2
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.gkemulticloud.v1.GetAzureNodePoolRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureNodePoolsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureNodePoolsResponse" do
      repeated :azure_node_pools, :message, 1, "google.cloud.gkemulticloud.v1.AzureNodePool"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.gkemulticloud.v1.DeleteAzureNodePoolRequest" do
      optional :name, :string, 1
      optional :validate_only, :bool, 2
      optional :allow_missing, :bool, 3
      optional :etag, :string, 4
    end
    add_message "google.cloud.gkemulticloud.v1.GetAzureServerConfigRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gkemulticloud.v1.CreateAzureClientRequest" do
      optional :parent, :string, 1
      optional :azure_client, :message, 2, "google.cloud.gkemulticloud.v1.AzureClient"
      optional :azure_client_id, :string, 4
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.gkemulticloud.v1.GetAzureClientRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureClientsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.gkemulticloud.v1.ListAzureClientsResponse" do
      repeated :azure_clients, :message, 1, "google.cloud.gkemulticloud.v1.AzureClient"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.gkemulticloud.v1.DeleteAzureClientRequest" do
      optional :name, :string, 1
      optional :allow_missing, :bool, 2
      optional :validate_only, :bool, 3
    end
    add_message "google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenRequest" do
      optional :azure_cluster, :string, 1
    end
    add_message "google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenResponse" do
      optional :access_token, :string, 1
      optional :expiration_time, :message, 2, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module GkeMultiCloud
      module V1
        CreateAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureClusterRequest").msgclass
        UpdateAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.UpdateAzureClusterRequest").msgclass
        GetAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureClusterRequest").msgclass
        ListAzureClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClustersRequest").msgclass
        ListAzureClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClustersResponse").msgclass
        DeleteAzureClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureClusterRequest").msgclass
        CreateAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureNodePoolRequest").msgclass
        UpdateAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.UpdateAzureNodePoolRequest").msgclass
        GetAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureNodePoolRequest").msgclass
        ListAzureNodePoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureNodePoolsRequest").msgclass
        ListAzureNodePoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureNodePoolsResponse").msgclass
        DeleteAzureNodePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureNodePoolRequest").msgclass
        GetAzureServerConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureServerConfigRequest").msgclass
        CreateAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.CreateAzureClientRequest").msgclass
        GetAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GetAzureClientRequest").msgclass
        ListAzureClientsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClientsRequest").msgclass
        ListAzureClientsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ListAzureClientsResponse").msgclass
        DeleteAzureClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.DeleteAzureClientRequest").msgclass
        GenerateAzureAccessTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenRequest").msgclass
        GenerateAzureAccessTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.GenerateAzureAccessTokenResponse").msgclass
      end
    end
  end
end
