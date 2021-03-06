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

defmodule GoogleApi.AppEngine.V1.Model.EndpointsApiService do
  @moduledoc """
  Cloud Endpoints (https://cloud.google.com/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy. Only valid for App Engine Flexible environment deployments.The fields here refer to the name and configuration ID of a \&quot;service\&quot; resource in the Service Management API (https://cloud.google.com/service-management/overview).

  ## Attributes

  - configId (String.t): Endpoints service configuration ID as specified by the Service Management API. For example \&quot;2016-09-19r1\&quot;.By default, the rollout strategy for Endpoints is RolloutStrategy.FIXED. This means that Endpoints starts up with a particular configuration ID. When a new configuration is rolled out, Endpoints must be given the new configuration ID. The config_id field is used to give the configuration ID and is required in this case.Endpoints also has a rollout strategy called RolloutStrategy.MANAGED. When using this, Endpoints fetches the latest configuration and does not need the configuration ID. In this case, config_id must be omitted. Defaults to: `null`.
  - disableTraceSampling (boolean()): Enable or disable trace sampling. By default, this is set to false for enabled. Defaults to: `null`.
  - name (String.t): Endpoints service name which is the name of the \&quot;service\&quot; resource in the Service Management API. For example \&quot;myapi.endpoints.myproject.cloud.goog\&quot; Defaults to: `null`.
  - rolloutStrategy (String.t): Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED_ROLLOUT_STRATEGY, FIXED, MANAGED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configId => any(),
          :disableTraceSampling => any(),
          :name => any(),
          :rolloutStrategy => any()
        }

  field(:configId)
  field(:disableTraceSampling)
  field(:name)
  field(:rolloutStrategy)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.EndpointsApiService do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.EndpointsApiService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.EndpointsApiService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
