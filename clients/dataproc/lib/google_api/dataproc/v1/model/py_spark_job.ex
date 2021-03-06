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

defmodule GoogleApi.Dataproc.V1.Model.PySparkJob do
  @moduledoc """
  A Cloud Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.

  ## Attributes

  - archiveUris ([String.t]): Optional. HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. Defaults to: `null`.
  - args ([String.t]): Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission. Defaults to: `null`.
  - fileUris ([String.t]): Optional. HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks. Defaults to: `null`.
  - jarFileUris ([String.t]): Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks. Defaults to: `null`.
  - loggingConfig (LoggingConfig): Optional. The runtime log config for job execution. Defaults to: `null`.
  - mainPythonFileUri (String.t): Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file. Defaults to: `null`.
  - properties (%{optional(String.t) &#x3D;&gt; String.t}): Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. Defaults to: `null`.
  - pythonFileUris ([String.t]): Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveUris => list(any()),
          :args => list(any()),
          :fileUris => list(any()),
          :jarFileUris => list(any()),
          :loggingConfig => GoogleApi.Dataproc.V1.Model.LoggingConfig.t(),
          :mainPythonFileUri => any(),
          :properties => map(),
          :pythonFileUris => list(any())
        }

  field(:archiveUris, type: :list)
  field(:args, type: :list)
  field(:fileUris, type: :list)
  field(:jarFileUris, type: :list)
  field(:loggingConfig, as: GoogleApi.Dataproc.V1.Model.LoggingConfig)
  field(:mainPythonFileUri)
  field(:properties, type: :map)
  field(:pythonFileUris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.PySparkJob do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.PySparkJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.PySparkJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
