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


module Google
  module Cloud
    module Notebooks
      module V1
        # Request for listing Managed Notebook Runtimes.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing
        #     from the last result.
        class ListRuntimesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing Managed Notebook Runtimes.
        # @!attribute [rw] runtimes
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Runtime>]
        #     A list of returned Runtimes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached. For example,
        #     ['us-west1', 'us-central1'].
        #     A ListRuntimesResponse will only contain either runtimes or unreachables,
        class ListRuntimesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class GetRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a Managed Notebook Runtime.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] runtime_id
        #   @return [::String]
        #     Required. User-defined unique ID of this Runtime.
        # @!attribute [rw] runtime
        #   @return [::Google::Cloud::Notebooks::V1::Runtime]
        #     Required. The Runtime to be created.
        class CreateRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class DeleteRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for starting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class StartRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for stopping a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class StopRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for switching a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     machine type.
        # @!attribute [rw] accelerator_config
        #   @return [::Google::Cloud::Notebooks::V1::RuntimeAcceleratorConfig]
        #     accelerator config.
        class SwitchRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for reseting a Managed Notebook Runtime.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        class ResetRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for reporting a Managed Notebook Event.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
        # @!attribute [rw] vm_id
        #   @return [::String]
        #     Required. The VM hardware token for authenticating the VM.
        #     https://cloud.google.com/compute/docs/instances/verifying-instance-identity
        # @!attribute [rw] event
        #   @return [::Google::Cloud::Notebooks::V1::Event]
        #     Required. The Event to be reported.
        class ReportRuntimeEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end