# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/bigtable/v2/bigtable_pb"
require "google/bigtable/v2/bigtable_services_pb"
require "google/cloud/bigtable/v2/bigtable"

class ::Google::Cloud::Bigtable::V2::Bigtable::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_read_rows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::ReadRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a server streaming method.
    table_name = "hello world"
    app_profile_id = "hello world"
    rows = {}
    filter = {}
    rows_limit = 42

    read_rows_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :read_rows, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigtable::V2::RowSet), request["rows"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigtable::V2::RowFilter), request["filter"]
      assert_equal 42, request["rows_limit"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, read_rows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.read_rows({ table_name: table_name, app_profile_id: app_profile_id, rows: rows, filter: filter, rows_limit: rows_limit }) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.read_rows table_name: table_name, app_profile_id: app_profile_id, rows: rows, filter: filter, rows_limit: rows_limit do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.read_rows ::Google::Cloud::Bigtable::V2::ReadRowsRequest.new(table_name: table_name, app_profile_id: app_profile_id, rows: rows, filter: filter, rows_limit: rows_limit) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.read_rows({ table_name: table_name, app_profile_id: app_profile_id, rows: rows, filter: filter, rows_limit: rows_limit }, grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.read_rows(::Google::Cloud::Bigtable::V2::ReadRowsRequest.new(table_name: table_name, app_profile_id: app_profile_id, rows: rows, filter: filter, rows_limit: rows_limit), grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, read_rows_client_stub.call_rpc_count
    end
  end

  def test_sample_row_keys
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a server streaming method.
    table_name = "hello world"
    app_profile_id = "hello world"

    sample_row_keys_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :sample_row_keys, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, sample_row_keys_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.sample_row_keys({ table_name: table_name, app_profile_id: app_profile_id }) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.sample_row_keys table_name: table_name, app_profile_id: app_profile_id do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.sample_row_keys ::Google::Cloud::Bigtable::V2::SampleRowKeysRequest.new(table_name: table_name, app_profile_id: app_profile_id) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.sample_row_keys({ table_name: table_name, app_profile_id: app_profile_id }, grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.sample_row_keys(::Google::Cloud::Bigtable::V2::SampleRowKeysRequest.new(table_name: table_name, app_profile_id: app_profile_id), grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::SampleRowKeysResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, sample_row_keys_client_stub.call_rpc_count
    end
  end

  def test_mutate_row
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::MutateRowResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    table_name = "hello world"
    app_profile_id = "hello world"
    row_key = "hello world"
    mutations = [{}]

    mutate_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :mutate_row, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      assert_equal "hello world", request["row_key"]
      assert_kind_of ::Google::Cloud::Bigtable::V2::Mutation, request["mutations"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, mutate_row_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.mutate_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, mutations: mutations }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.mutate_row table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, mutations: mutations do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.mutate_row ::Google::Cloud::Bigtable::V2::MutateRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, mutations: mutations) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.mutate_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, mutations: mutations }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.mutate_row(::Google::Cloud::Bigtable::V2::MutateRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, mutations: mutations), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, mutate_row_client_stub.call_rpc_count
    end
  end

  def test_mutate_rows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::MutateRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a server streaming method.
    table_name = "hello world"
    app_profile_id = "hello world"
    entries = [{}]

    mutate_rows_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :mutate_rows, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsRequest::Entry, request["entries"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, mutate_rows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.mutate_rows({ table_name: table_name, app_profile_id: app_profile_id, entries: entries }) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.mutate_rows table_name: table_name, app_profile_id: app_profile_id, entries: entries do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.mutate_rows ::Google::Cloud::Bigtable::V2::MutateRowsRequest.new(table_name: table_name, app_profile_id: app_profile_id, entries: entries) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.mutate_rows({ table_name: table_name, app_profile_id: app_profile_id, entries: entries }, grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.mutate_rows(::Google::Cloud::Bigtable::V2::MutateRowsRequest.new(table_name: table_name, app_profile_id: app_profile_id, entries: entries), grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigtable::V2::MutateRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, mutate_rows_client_stub.call_rpc_count
    end
  end

  def test_check_and_mutate_row
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::CheckAndMutateRowResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    table_name = "hello world"
    app_profile_id = "hello world"
    row_key = "hello world"
    predicate_filter = {}
    true_mutations = [{}]
    false_mutations = [{}]

    check_and_mutate_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :check_and_mutate_row, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::CheckAndMutateRowRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      assert_equal "hello world", request["row_key"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigtable::V2::RowFilter), request["predicate_filter"]
      assert_kind_of ::Google::Cloud::Bigtable::V2::Mutation, request["true_mutations"].first
      assert_kind_of ::Google::Cloud::Bigtable::V2::Mutation, request["false_mutations"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, check_and_mutate_row_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.check_and_mutate_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, predicate_filter: predicate_filter, true_mutations: true_mutations, false_mutations: false_mutations }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.check_and_mutate_row table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, predicate_filter: predicate_filter, true_mutations: true_mutations, false_mutations: false_mutations do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.check_and_mutate_row ::Google::Cloud::Bigtable::V2::CheckAndMutateRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, predicate_filter: predicate_filter, true_mutations: true_mutations, false_mutations: false_mutations) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.check_and_mutate_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, predicate_filter: predicate_filter, true_mutations: true_mutations, false_mutations: false_mutations }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.check_and_mutate_row(::Google::Cloud::Bigtable::V2::CheckAndMutateRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, predicate_filter: predicate_filter, true_mutations: true_mutations, false_mutations: false_mutations), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, check_and_mutate_row_client_stub.call_rpc_count
    end
  end

  def test_read_modify_write_row
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigtable::V2::ReadModifyWriteRowResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    table_name = "hello world"
    app_profile_id = "hello world"
    row_key = "hello world"
    rules = [{}]

    read_modify_write_row_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :read_modify_write_row, name
      assert_kind_of ::Google::Cloud::Bigtable::V2::ReadModifyWriteRowRequest, request
      assert_equal "hello world", request["table_name"]
      assert_equal "hello world", request["app_profile_id"]
      assert_equal "hello world", request["row_key"]
      assert_kind_of ::Google::Cloud::Bigtable::V2::ReadModifyWriteRule, request["rules"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, read_modify_write_row_client_stub do
      # Create client
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.read_modify_write_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, rules: rules }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.read_modify_write_row table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, rules: rules do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.read_modify_write_row ::Google::Cloud::Bigtable::V2::ReadModifyWriteRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, rules: rules) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.read_modify_write_row({ table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, rules: rules }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.read_modify_write_row(::Google::Cloud::Bigtable::V2::ReadModifyWriteRowRequest.new(table_name: table_name, app_profile_id: app_profile_id, row_key: row_key, rules: rules), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, read_modify_write_row_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::V2::Bigtable::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigtable::V2::Bigtable::Client::Configuration, config
  end
end
