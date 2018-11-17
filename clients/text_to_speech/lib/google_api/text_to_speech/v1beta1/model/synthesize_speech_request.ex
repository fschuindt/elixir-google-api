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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.SynthesizeSpeechRequest do
  @moduledoc """
  The top-level message sent by the client for the &#x60;SynthesizeSpeech&#x60; method.

  ## Attributes

  - audioConfig (AudioConfig): Required. The configuration of the synthesized audio. Defaults to: `null`.
  - input (SynthesisInput): Required. The Synthesizer requires either plain text or SSML as input. Defaults to: `null`.
  - voice (VoiceSelectionParams): Required. The desired voice of the synthesized audio. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioConfig => GoogleApi.TextToSpeech.V1beta1.Model.AudioConfig.t(),
          :input => GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput.t(),
          :voice => GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams.t()
        }

  field(:audioConfig, as: GoogleApi.TextToSpeech.V1beta1.Model.AudioConfig)
  field(:input, as: GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput)
  field(:voice, as: GoogleApi.TextToSpeech.V1beta1.Model.VoiceSelectionParams)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesizeSpeechRequest do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.SynthesizeSpeechRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesizeSpeechRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end