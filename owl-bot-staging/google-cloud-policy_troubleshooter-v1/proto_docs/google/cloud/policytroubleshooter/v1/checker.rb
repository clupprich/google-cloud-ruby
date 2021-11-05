# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module PolicyTroubleshooter
      module V1
        # Request for {::Google::Cloud::PolicyTroubleshooter::V1::IamChecker::Client#troubleshoot_iam_policy TroubleshootIamPolicy}.
        # @!attribute [rw] access_tuple
        #   @return [::Google::Cloud::PolicyTroubleshooter::V1::AccessTuple]
        #     The information to use for checking whether a member has a permission for a
        #     resource.
        class TroubleshootIamPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for {::Google::Cloud::PolicyTroubleshooter::V1::IamChecker::Client#troubleshoot_iam_policy TroubleshootIamPolicy}.
        # @!attribute [rw] access
        #   @return [::Google::Cloud::PolicyTroubleshooter::V1::AccessState]
        #     Indicates whether the member has the specified permission for the specified
        #     resource, based on evaluating all of the applicable IAM policies.
        # @!attribute [rw] explained_policies
        #   @return [::Array<::Google::Cloud::PolicyTroubleshooter::V1::ExplainedPolicy>]
        #     List of IAM policies that were evaluated to check the member's permissions,
        #     with annotations to indicate how each policy contributed to the final
        #     result.
        #
        #     The list of policies can include the policy for the resource itself. It can
        #     also include policies that are inherited from higher levels of the resource
        #     hierarchy, including the organization, the folder, and the project.
        #
        #     To learn more about the resource hierarchy, see
        #     https://cloud.google.com/iam/help/resource-hierarchy.
        class TroubleshootIamPolicyResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
