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

require "google/cloud/errors"
require "google/cloud/talent/v4beta1/application_service_pb"

module Google
  module Cloud
    module Talent
      module V4beta1
        module ApplicationService
          ##
          # Client for the ApplicationService service.
          #
          # A service that handles application management, including CRUD and
          # enumeration.
          #
          class Client
            include Paths

            # @private
            attr_reader :application_service_stub

            ##
            # Configure the ApplicationService Client class.
            #
            # See {::Google::Cloud::Talent::V4beta1::ApplicationService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all ApplicationService clients
            #   ::Google::Cloud::Talent::V4beta1::ApplicationService::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Talent", "V4beta1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.create_application.timeout = 30.0

                default_config.rpcs.get_application.timeout = 30.0
                default_config.rpcs.get_application.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config.rpcs.update_application.timeout = 30.0

                default_config.rpcs.delete_application.timeout = 30.0
                default_config.rpcs.delete_application.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config.rpcs.list_applications.timeout = 30.0
                default_config.rpcs.list_applications.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the ApplicationService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Talent::V4beta1::ApplicationService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new ApplicationService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Talent::V4beta1::ApplicationService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Talent::V4beta1::ApplicationService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the ApplicationService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/talent/v4beta1/application_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @application_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Talent::V4beta1::ApplicationService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Creates a new application entity.
            #
            # @overload create_application(request, options = nil)
            #   Pass arguments to `create_application` via a request object, either of type
            #   {::Google::Cloud::Talent::V4beta1::CreateApplicationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4beta1::CreateApplicationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_application(parent: nil, application: nil)
            #   Pass arguments to `create_application` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. Resource name of the profile under which the application is created.
            #
            #     The format is
            #     "projects/\\{project_id}/tenants/\\{tenant_id}/profiles/\\{profile_id}".
            #     For example, "projects/foo/tenants/bar/profiles/baz".
            #   @param application [::Google::Cloud::Talent::V4beta1::Application, ::Hash]
            #     Required. The application to be created.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Talent::V4beta1::Application]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Talent::V4beta1::Application]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def create_application request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::CreateApplicationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_application.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_application.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_application.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @application_service_stub.call_rpc :create_application, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Retrieves specified application.
            #
            # @overload get_application(request, options = nil)
            #   Pass arguments to `get_application` via a request object, either of type
            #   {::Google::Cloud::Talent::V4beta1::GetApplicationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4beta1::GetApplicationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_application(name: nil)
            #   Pass arguments to `get_application` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the application to be retrieved.
            #
            #     The format is
            #     "projects/\\{project_id}/tenants/\\{tenant_id}/profiles/\\{profile_id}/applications/\\{application_id}".
            #     For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Talent::V4beta1::Application]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Talent::V4beta1::Application]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def get_application request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::GetApplicationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_application.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_application.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_application.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @application_service_stub.call_rpc :get_application, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates specified application.
            #
            # @overload update_application(request, options = nil)
            #   Pass arguments to `update_application` via a request object, either of type
            #   {::Google::Cloud::Talent::V4beta1::UpdateApplicationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4beta1::UpdateApplicationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_application(application: nil, update_mask: nil)
            #   Pass arguments to `update_application` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param application [::Google::Cloud::Talent::V4beta1::Application, ::Hash]
            #     Required. The application resource to replace the current resource in the system.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Strongly recommended for the best service experience.
            #
            #     If {::Google::Cloud::Talent::V4beta1::UpdateApplicationRequest#update_mask update_mask} is provided, only the specified fields in
            #     {::Google::Cloud::Talent::V4beta1::UpdateApplicationRequest#application application} are updated. Otherwise all the fields are updated.
            #
            #     A field mask to specify the application fields to be updated. Only
            #     top level fields of {::Google::Cloud::Talent::V4beta1::Application Application} are supported.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Talent::V4beta1::Application]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Talent::V4beta1::Application]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def update_application request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::UpdateApplicationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_application.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.application&.name
                header_params["application.name"] = request.application.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_application.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_application.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @application_service_stub.call_rpc :update_application, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes specified application.
            #
            # @overload delete_application(request, options = nil)
            #   Pass arguments to `delete_application` via a request object, either of type
            #   {::Google::Cloud::Talent::V4beta1::DeleteApplicationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4beta1::DeleteApplicationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_application(name: nil)
            #   Pass arguments to `delete_application` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the application to be deleted.
            #
            #     The format is
            #     "projects/\\{project_id}/tenants/\\{tenant_id}/profiles/\\{profile_id}/applications/\\{application_id}".
            #     For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def delete_application request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::DeleteApplicationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_application.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_application.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_application.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @application_service_stub.call_rpc :delete_application, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists all applications associated with the profile.
            #
            # @overload list_applications(request, options = nil)
            #   Pass arguments to `list_applications` via a request object, either of type
            #   {::Google::Cloud::Talent::V4beta1::ListApplicationsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4beta1::ListApplicationsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_applications(parent: nil, page_token: nil, page_size: nil)
            #   Pass arguments to `list_applications` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. Resource name of the profile under which the application is created.
            #
            #     The format is
            #     "projects/\\{project_id}/tenants/\\{tenant_id}/profiles/\\{profile_id}", for
            #     example, "projects/foo/tenants/bar/profiles/baz".
            #   @param page_token [::String]
            #     The starting indicator from which to return results.
            #   @param page_size [::Integer]
            #     The maximum number of applications to be returned, at most 100.
            #     Default is 100 if a non-positive number is provided.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Talent::V4beta1::Application>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Talent::V4beta1::Application>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def list_applications request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4beta1::ListApplicationsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_applications.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_applications.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_applications.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @application_service_stub.call_rpc :list_applications, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @application_service_stub, :list_applications, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the ApplicationService API.
            #
            # This class represents the configuration for ApplicationService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Talent::V4beta1::ApplicationService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # create_application to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Talent::V4beta1::ApplicationService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_application.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Talent::V4beta1::ApplicationService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_application.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"jobs.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "jobs.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the ApplicationService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_application`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_application
                ##
                # RPC-specific configuration for `get_application`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_application
                ##
                # RPC-specific configuration for `update_application`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_application
                ##
                # RPC-specific configuration for `delete_application`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_application
                ##
                # RPC-specific configuration for `list_applications`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_applications

                # @private
                def initialize parent_rpcs = nil
                  create_application_config = parent_rpcs.create_application if parent_rpcs.respond_to? :create_application
                  @create_application = ::Gapic::Config::Method.new create_application_config
                  get_application_config = parent_rpcs.get_application if parent_rpcs.respond_to? :get_application
                  @get_application = ::Gapic::Config::Method.new get_application_config
                  update_application_config = parent_rpcs.update_application if parent_rpcs.respond_to? :update_application
                  @update_application = ::Gapic::Config::Method.new update_application_config
                  delete_application_config = parent_rpcs.delete_application if parent_rpcs.respond_to? :delete_application
                  @delete_application = ::Gapic::Config::Method.new delete_application_config
                  list_applications_config = parent_rpcs.list_applications if parent_rpcs.respond_to? :list_applications
                  @list_applications = ::Gapic::Config::Method.new list_applications_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
