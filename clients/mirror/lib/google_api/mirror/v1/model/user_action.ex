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

defmodule GoogleApi.Mirror.V1.Model.UserAction do
  @moduledoc """
  Represents an action taken by the user that triggered a notification.

  ## Attributes

  - payload (String.t): An optional payload for the action.  For actions of type CUSTOM, this is the ID of the custom menu item that was selected. Defaults to: `null`.
  - type (String.t): The type of action. The value of this can be:   - SHARE - the user shared an item.  - REPLY - the user replied to an item.  - REPLY_ALL - the user replied to all recipients of an item.  - CUSTOM - the user selected a custom menu item on the timeline item.  - DELETE - the user deleted the item.  - PIN - the user pinned the item.  - UNPIN - the user unpinned the item.  - LAUNCH - the user initiated a voice command.  In the future, additional types may be added. UserActions with unrecognized types should be ignored. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => any(),
          :type => any()
        }

  field(:payload)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.UserAction do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.UserAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.UserAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
