# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/resourcemanager/v3/organizations.proto for package 'Google.Cloud.ResourceManager.V3'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/resourcemanager/v3/organizations_pb'

module Google
  module Cloud
    module ResourceManager
      module V3
        module Organizations
          # Allows users to manage their organization resources.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.resourcemanager.v3.Organizations'

            # Fetches an organization resource identified by the specified resource name.
            rpc :GetOrganization, ::Google::Cloud::ResourceManager::V3::GetOrganizationRequest, ::Google::Cloud::ResourceManager::V3::Organization
            # Searches organization resources that are visible to the user and satisfy
            # the specified filter. This method returns organizations in an unspecified
            # order. New organizations do not necessarily appear at the end of the
            # results, and may take a small amount of time to appear.
            #
            # Search will only return organizations on which the user has the permission
            # `resourcemanager.organizations.get`
            rpc :SearchOrganizations, ::Google::Cloud::ResourceManager::V3::SearchOrganizationsRequest, ::Google::Cloud::ResourceManager::V3::SearchOrganizationsResponse
            # Gets the access control policy for an organization resource. The policy may
            # be empty if no such policy or resource exists. The `resource` field should
            # be the organization's resource name, for example: "organizations/123".
            #
            # Authorization requires the IAM permission
            # `resourcemanager.organizations.getIamPolicy` on the specified organization.
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Sets the access control policy on an organization resource. Replaces any
            # existing policy. The `resource` field should be the organization's resource
            # name, for example: "organizations/123".
            #
            # Authorization requires the IAM permission
            # `resourcemanager.organizations.setIamPolicy` on the specified organization.
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns the permissions that a caller has on the specified organization.
            # The `resource` field should be the organization's resource name,
            # for example: "organizations/123".
            #
            # There are no permissions required for making this API call.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
