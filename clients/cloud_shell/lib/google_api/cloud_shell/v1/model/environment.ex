# Copyright 2018 Google Inc.
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

defmodule GoogleApi.CloudShell.V1.Model.Environment do
  @moduledoc """
  A Cloud Shell environment, which is defined as the combination of a Docker image specifying what is installed on the environment and a home directory containing the user&#39;s data that will remain across sessions. Each user has a single environment with the ID \&quot;default\&quot;.

  ## Attributes

  - dockerImage (String.t): Required. Full path to the Docker image used to run this environment, e.g. \&quot;gcr.io/dev-con/cloud-devshell:latest\&quot;. Defaults to: `null`.
  - id (String.t): Output only. The environment&#39;s identifier, which is always \&quot;default\&quot;. Defaults to: `null`.
  - name (String.t): Output only. Full name of this resource, in the format &#x60;users/{owner_email}/environments/{environment_id}&#x60;. &#x60;{owner_email}&#x60; is the email address of the user to whom this environment belongs, and &#x60;{environment_id}&#x60; is the identifier of this environment. For example, &#x60;users/someone@example.com/environments/default&#x60;. Defaults to: `null`.
  - publicKeys ([PublicKey]): Output only. Public keys associated with the environment. Clients can connect to this environment via SSH only if they possess a private key corresponding to at least one of these public keys. Keys can be added to or removed from the environment using the CreatePublicKey and DeletePublicKey methods. Defaults to: `null`.
  - sshHost (String.t): Output only. Host to which clients can connect to initiate SSH sessions with the environment. Defaults to: `null`.
  - sshPort (integer()): Output only. Port to which clients can connect to initiate SSH sessions with the environment. Defaults to: `null`.
  - sshUsername (String.t): Output only. Username that clients should use when initiating SSH sessions with the environment. Defaults to: `null`.
  - state (String.t): Output only. Current execution state of this environment. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, DISABLED, STARTING, RUNNING]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dockerImage => any(),
          :id => any(),
          :name => any(),
          :publicKeys => list(GoogleApi.CloudShell.V1.Model.PublicKey.t()),
          :sshHost => any(),
          :sshPort => any(),
          :sshUsername => any(),
          :state => any()
        }

  field(:dockerImage)
  field(:id)
  field(:name)
  field(:publicKeys, as: GoogleApi.CloudShell.V1.Model.PublicKey, type: :list)
  field(:sshHost)
  field(:sshPort)
  field(:sshUsername)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.CloudShell.V1.Model.Environment do
  def decode(value, options) do
    GoogleApi.CloudShell.V1.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudShell.V1.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end