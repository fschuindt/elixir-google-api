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

defmodule GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  @moduledoc """
  Metadata for ImportDocuments operations.

  ## Attributes

  - collectionIds ([String.t]): Which collection ids are being imported. Defaults to: `null`.
  - endTime (DateTime.t): The time the operation ended, either successfully or otherwise. Unset if the operation is still active. Defaults to: `null`.
  - inputUriPrefix (String.t): The location of the documents being imported. Defaults to: `null`.
  - operationState (String.t): The state of the import operation. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, INITIALIZING, PROCESSING, CANCELLING, FINALIZING, SUCCESSFUL, FAILED, CANCELLED]
  - progressBytes (GoogleFirestoreAdminV1beta1Progress): An estimate of the number of bytes processed. Defaults to: `null`.
  - progressDocuments (GoogleFirestoreAdminV1beta1Progress): An estimate of the number of documents processed. Defaults to: `null`.
  - startTime (DateTime.t): The time that work began on the operation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionIds => list(any()),
          :endTime => DateTime.t(),
          :inputUriPrefix => any(),
          :operationState => any(),
          :progressBytes =>
            GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t(),
          :progressDocuments =>
            GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t(),
          :startTime => DateTime.t()
        }

  field(:collectionIds, type: :list)
  field(:endTime, as: DateTime)
  field(:inputUriPrefix)
  field(:operationState)
  field(:progressBytes, as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress)

  field(
    :progressDocuments,
    as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress
  )

  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
