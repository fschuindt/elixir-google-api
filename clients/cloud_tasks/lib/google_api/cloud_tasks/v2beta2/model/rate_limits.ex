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

defmodule GoogleApi.CloudTasks.V2beta2.Model.RateLimits do
  @moduledoc """
  Rate limits.  This message determines the maximum rate that tasks can be dispatched by a queue, regardless of whether the dispatch is a first task attempt or a retry.  Note: The debugging command, RunTask, will run a task even if the queue has reached its RateLimits.

  ## Attributes

  - maxBurstSize (integer()): Output only. The max burst size.  Max burst size limits how fast tasks in queue are processed when many tasks are in the queue and the rate is high. This field allows the queue to have a high rate so processing starts shortly after a task is enqueued, but still limits resource usage when many tasks are enqueued in a short period of time.  The [token bucket](https://wikipedia.org/wiki/Token_Bucket) algorithm is used to control the rate of task dispatches. Each queue has a token bucket that holds tokens, up to the maximum specified by &#x60;max_burst_size&#x60;. Each time a task is dispatched, a token is removed from the bucket. Tasks will be dispatched until the queue&#39;s bucket runs out of tokens. The bucket will be continuously refilled with new tokens based on max_tasks_dispatched_per_second.  Cloud Tasks will pick the value of &#x60;max_burst_size&#x60; based on the value of max_tasks_dispatched_per_second.  For App Engine queues that were created or updated using &#x60;queue.yaml/xml&#x60;, &#x60;max_burst_size&#x60; is equal to [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size). Since &#x60;max_burst_size&#x60; is output only, if UpdateQueue is called on a queue created by &#x60;queue.yaml/xml&#x60;, &#x60;max_burst_size&#x60; will be reset based on the value of max_tasks_dispatched_per_second, regardless of whether max_tasks_dispatched_per_second is updated.  Defaults to: `null`.
  - maxConcurrentTasks (integer()): The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases.  If unspecified when the queue is created, Cloud Tasks will pick the default.   The maximum allowed value is 5,000.  This field is output only for pull queues and always -1, which indicates no limit. No other queue types can have &#x60;max_concurrent_tasks&#x60; set to -1.   This field has the same meaning as [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests). Defaults to: `null`.
  - maxTasksDispatchedPerSecond (float()): The maximum rate at which tasks are dispatched from this queue.  If unspecified when the queue is created, Cloud Tasks will pick the default.  * For App Engine queues, the maximum allowed value   is 500. * This field is output only   for pull queues. In addition to the   &#x60;max_tasks_dispatched_per_second&#x60; limit, a maximum of 10 QPS of   LeaseTasks requests are allowed per pull queue.   This field has the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxBurstSize => any(),
          :maxConcurrentTasks => any(),
          :maxTasksDispatchedPerSecond => any()
        }

  field(:maxBurstSize)
  field(:maxConcurrentTasks)
  field(:maxTasksDispatchedPerSecond)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.RateLimits do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.RateLimits.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.RateLimits do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
