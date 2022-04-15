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
    module CertificateManager
      module V1
        module CertificateManager
          # Path helper methods for the CertificateManager API.
          module Paths
            ##
            # Create a fully-qualified Certificate resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/certificates/{certificate}`
            #
            # @param project [String]
            # @param location [String]
            # @param certificate [String]
            #
            # @return [::String]
            def certificate_path project:, location:, certificate:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/certificates/#{certificate}"
            end

            ##
            # Create a fully-qualified CertificateMap resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/certificateMaps/{certificate_map}`
            #
            # @param project [String]
            # @param location [String]
            # @param certificate_map [String]
            #
            # @return [::String]
            def certificate_map_path project:, location:, certificate_map:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/certificateMaps/#{certificate_map}"
            end

            ##
            # Create a fully-qualified CertificateMapEntry resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/certificateMaps/{certificate_map}/certificateMapEntries/{certificate_map_entry}`
            #
            # @param project [String]
            # @param location [String]
            # @param certificate_map [String]
            # @param certificate_map_entry [String]
            #
            # @return [::String]
            def certificate_map_entry_path project:, location:, certificate_map:, certificate_map_entry:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "certificate_map cannot contain /" if certificate_map.to_s.include? "/"

              "projects/#{project}/locations/#{location}/certificateMaps/#{certificate_map}/certificateMapEntries/#{certificate_map_entry}"
            end

            ##
            # Create a fully-qualified DnsAuthorization resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dnsAuthorizations/{dns_authorization}`
            #
            # @param project [String]
            # @param location [String]
            # @param dns_authorization [String]
            #
            # @return [::String]
            def dns_authorization_path project:, location:, dns_authorization:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dnsAuthorizations/#{dns_authorization}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified TargetHttpsProxies resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/targetHttpsProxies/{target_https_proxy}`
            #
            # @param project [String]
            # @param location [String]
            # @param target_https_proxy [String]
            #
            # @return [::String]
            def target_https_proxies_path project:, location:, target_https_proxy:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/targetHttpsProxies/#{target_https_proxy}"
            end

            ##
            # Create a fully-qualified TargetSslProxies resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/targetSslProxies/{target_ssl_proxy}`
            #
            # @param project [String]
            # @param location [String]
            # @param target_ssl_proxy [String]
            #
            # @return [::String]
            def target_ssl_proxies_path project:, location:, target_ssl_proxy:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/targetSslProxies/#{target_ssl_proxy}"
            end

            extend self
          end
        end
      end
    end
  end
end