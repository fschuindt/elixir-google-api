# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Api.Enterprises do
  @moduledoc """
  API calls for all endpoints tagged `Enterprises`.
  """

  alias GoogleApi.AndroidManagement.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates an enterprise. This is the last step in the enterprise signup flow.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :enterpriseToken (String.t): The enterprise token appended to the callback URL.
    - :projectId (String.t): The ID of the Google Cloud Platform project which will own the enterprise.
    - :signupUrlName (String.t): The name of the SignupUrl used to sign up for the enterprise.
    - :body (Enterprise): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Enterprise{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.Enterprise.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :enterpriseToken => :query,
      :projectId => :query,
      :signupUrlName => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/enterprises")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Enterprise{}])
  end

  @doc """
  Issues a command to a device. The Operation resource returned contains a Command in its metadata field. Use the get operation method to get the status of the command.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String.t): The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Command): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_issue_command(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_issue_command(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:issueCommand", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Operation{}])
  end

  @doc """
  Lists devices for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The requested page size. The actual page size may be fixed to a min or max value.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/devices", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse{}]
    )
  end

  @doc """
  Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn&#39;t support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String.t): The name of the operation resource to be cancelled.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_cancel(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_operations_cancel(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:cancel", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Empty{}])
  end

  @doc """
  Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn&#39;t support this method, it returns google.rpc.Code.UNIMPLEMENTED.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String.t): The name of the operation resource to be deleted.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :wipeDataFlags ([String.t]): Optional flags that control the device wiping behavior.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_delete(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_operations_delete(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :wipeDataFlags => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Empty{}])
  end

  @doc """
  Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String.t): The name of the operation resource.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :filter (String.t): The standard list filter.
    - :pageSize (integer()): The standard list page size.
    - :pageToken (String.t): The standard list page token.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_operations_get(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.AndroidManagement.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_operations_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Operation{}])
  end

  @doc """
  Updates a device.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - name (String.t): The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): The field mask indicating the fields to update. If not set, all modifiable fields will be modified.
    - :body (Device): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.Device{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_devices_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.Device.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_devices_patch(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.Device{}])
  end

  @doc """
  Creates an enrollment token for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (EnrollmentToken): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.EnrollmentToken{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_enrollment_tokens_create(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.EnrollmentToken.t()}
          | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_enrollment_tokens_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/enrollmentTokens", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.EnrollmentToken{}])
  end

  @doc """
  Lists policies for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The requested page size. The actual page size may be fixed to a min or max value.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_policies_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_policies_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/policies", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.ListPoliciesResponse{}]
    )
  end

  @doc """
  Creates a web app.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (WebApp): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.WebApp{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_web_apps_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.WebApp.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_web_apps_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/webApps", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.WebApp{}])
  end

  @doc """
  Lists web apps for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The requested page size. The actual page size may be fixed to a min or max value.
    - :pageToken (String.t): A token identifying a page of results returned by the server.

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.ListWebAppsResponse{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_web_apps_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.ListWebAppsResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_web_apps_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/webApps", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.ListWebAppsResponse{}]
    )
  end

  @doc """
  Creates a web token to access an embeddable managed Google Play web UI for a given enterprise.

  ## Parameters

  - connection (GoogleApi.AndroidManagement.V1.Connection): Connection to server
  - parent (String.t): The name of the enterprise in the form enterprises/{enterpriseId}.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (WebToken): 

  ## Returns

  {:ok, %GoogleApi.AndroidManagement.V1.Model.WebToken{}} on success
  {:error, info} on failure
  """
  @spec androidmanagement_enterprises_web_tokens_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidManagement.V1.Model.WebToken.t()} | {:error, Tesla.Env.t()}
  def androidmanagement_enterprises_web_tokens_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/webTokens", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidManagement.V1.Model.WebToken{}])
  end
end
