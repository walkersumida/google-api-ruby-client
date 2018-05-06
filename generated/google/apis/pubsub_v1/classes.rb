# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PubsubV1
      
      # Request for the Acknowledge method.
      class AcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # The acknowledgment ID for the messages being acknowledged that was returned
        # by the Pub/Sub system in the `Pull` response. Must not be empty.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request for the `CreateSnapshot` method.
      class CreateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # The subscription whose backlog the snapshot retains.
        # Specifically, the created snapshot is guaranteed to retain:
        # (a) The existing backlog on the subscription. More precisely, this is
        # defined as the messages in the subscription's backlog that are
        # unacknowledged upon the successful completion of the
        # `CreateSnapshot` request; as well as:
        # (b) Any messages published to the subscription's topic following the
        # successful completion of the CreateSnapshot request.
        # Format is `projects/`project`/subscriptions/`sub``.
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for the `ListSnapshots` method.
      class ListSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more snapshot that match the
        # request; this value should be passed in a new `ListSnapshotsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting snapshots.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<Google::Apis::PubsubV1::Snapshot>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListSubscriptions` method.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more subscriptions that match
        # the request; this value should be passed in a new
        # `ListSubscriptionsRequest` to get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::PubsubV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopicSnapshots` method.
      # [ALPHA] This method is a part of a closed Alpha API.
      class ListTopicSnapshotsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more snapshots that match
        # the request; this value should be passed in a new
        # `ListTopicSnapshotsRequest` to get more snapshots.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of the snapshots that match the request.
        # Corresponds to the JSON property `snapshots`
        # @return [Array<String>]
        attr_accessor :snapshots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snapshots = args[:snapshots] if args.key?(:snapshots)
        end
      end
      
      # Response for the `ListTopicSubscriptions` method.
      class ListTopicSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more subscriptions that match
        # the request; this value should be passed in a new
        # `ListTopicSubscriptionsRequest` to get more subscriptions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The names of the subscriptions that match the request.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<String>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # Response for the `ListTopics` method.
      class ListTopicsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more topics that match the
        # request; this value should be passed in a new `ListTopicsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resulting topics.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::PubsubV1::Topic>]
        attr_accessor :topics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @topics = args[:topics] if args.key?(:topics)
        end
      end
      
      # Request for the ModifyAckDeadline method.
      class ModifyAckDeadlineRequest
        include Google::Apis::Core::Hashable
      
        # The new ack deadline with respect to the time this request was sent to
        # the Pub/Sub system. For example, if the value is 10, the new
        # ack deadline will expire 10 seconds after the `ModifyAckDeadline` call
        # was made. Specifying zero may immediately make the message available for
        # another pull request.
        # The minimum deadline you can specify is 0 seconds.
        # The maximum deadline you can specify is 600 seconds (10 minutes).
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # List of acknowledgment IDs.
        # Corresponds to the JSON property `ackIds`
        # @return [Array<String>]
        attr_accessor :ack_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @ack_ids = args[:ack_ids] if args.key?(:ack_ids)
        end
      end
      
      # Request for the ModifyPushConfig method.
      class ModifyPushConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @push_config = args[:push_config] if args.key?(:push_config)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **JSON Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # **YAML Example**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-other-app@appspot.gserviceaccount.com
      # role: roles/owner
      # - members:
      # - user:sean@example.com
      # role: roles/viewer
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PubsubV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Deprecated.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request for the Publish method.
      class PublishRequest
        include Google::Apis::Core::Hashable
      
        # The messages to publish.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::PubsubV1::Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Response for the `Publish` method.
      class PublishResponse
        include Google::Apis::Core::Hashable
      
        # The server-assigned ID of each published message, in the same order as
        # the messages in the request. IDs are guaranteed to be unique within
        # the topic.
        # Corresponds to the JSON property `messageIds`
        # @return [Array<String>]
        attr_accessor :message_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_ids = args[:message_ids] if args.key?(:message_ids)
        end
      end
      
      # A message data and its attributes. The message payload must not be empty;
      # it must contain either a non-empty data field, or at least one attribute.
      class Message
        include Google::Apis::Core::Hashable
      
        # Optional attributes for this message.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # The message payload.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # ID of this message, assigned by the server when the message is published.
        # Guaranteed to be unique within the topic. This value may be read by a
        # subscriber that receives a `PubsubMessage` via a `Pull` call or a push
        # delivery. It must not be populated by the publisher in a `Publish` call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # The time at which the message was published, populated by the server when
        # it receives the `Publish` call. It must not be populated by the
        # publisher in a `Publish` call.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @data = args[:data] if args.key?(:data)
          @message_id = args[:message_id] if args.key?(:message_id)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
        end
      end
      
      # Request for the `Pull` method.
      class PullRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of messages returned for this request. The Pub/Sub
        # system may return fewer than the number specified.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # If this field set to true, the system will respond immediately even if
        # it there are no messages available to return in the `Pull` response.
        # Otherwise, the system may wait (for a bounded amount of time) until at
        # least one message is available, rather than returning no messages. The
        # client may cancel the request if it does not wish to wait any longer for
        # the response.
        # Corresponds to the JSON property `returnImmediately`
        # @return [Boolean]
        attr_accessor :return_immediately
        alias_method :return_immediately?, :return_immediately
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_messages = args[:max_messages] if args.key?(:max_messages)
          @return_immediately = args[:return_immediately] if args.key?(:return_immediately)
        end
      end
      
      # Response for the `Pull` method.
      class PullResponse
        include Google::Apis::Core::Hashable
      
        # Received Pub/Sub messages. The Pub/Sub system will return zero messages if
        # there are no more available in the backlog. The Pub/Sub system may return
        # fewer than the `maxMessages` requested even if there are more messages
        # available in the backlog.
        # Corresponds to the JSON property `receivedMessages`
        # @return [Array<Google::Apis::PubsubV1::ReceivedMessage>]
        attr_accessor :received_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @received_messages = args[:received_messages] if args.key?(:received_messages)
        end
      end
      
      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # Endpoint configuration attributes.
        # Every endpoint has a set of API supported attributes that can be used to
        # control different aspects of the message delivery.
        # The currently supported attribute is `x-goog-version`, which you can
        # use to change the format of the pushed message. This attribute
        # indicates the version of the data expected by the endpoint. This
        # controls the shape of the pushed message (i.e., its fields and metadata).
        # The endpoint version is based on the version of the Pub/Sub API.
        # If not present during the `CreateSubscription` call, it will default to
        # the version of the API used to make such call. If not present during a
        # `ModifyPushConfig` call, its value will not be changed. `GetSubscription`
        # calls will always return a valid version, even if the subscription was
        # created without this attribute.
        # The possible values for this attribute are:
        # * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API.
        # * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # A URL locating the endpoint to which messages should be pushed.
        # For example, a Webhook endpoint might use "https://example.com/push".
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @push_endpoint = args[:push_endpoint] if args.key?(:push_endpoint)
        end
      end
      
      # A message and its corresponding acknowledgment ID.
      class ReceivedMessage
        include Google::Apis::Core::Hashable
      
        # This ID can be used to acknowledge the received message.
        # Corresponds to the JSON property `ackId`
        # @return [String]
        attr_accessor :ack_id
      
        # A message data and its attributes. The message payload must not be empty;
        # it must contain either a non-empty data field, or at least one attribute.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::PubsubV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_id = args[:ack_id] if args.key?(:ack_id)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Request for the `Seek` method.
      class SeekRequest
        include Google::Apis::Core::Hashable
      
        # The snapshot to seek to. The snapshot's topic must be the same as that of
        # the provided subscription.
        # Format is `projects/`project`/snapshots/`snap``.
        # Corresponds to the JSON property `snapshot`
        # @return [String]
        attr_accessor :snapshot
      
        # The time to seek to.
        # Messages retained in the subscription that were published before this
        # time are marked as acknowledged, and messages retained in the
        # subscription that were published after this time are marked as
        # unacknowledged. Note that this operation affects only those messages
        # retained in the subscription (configured by the combination of
        # `message_retention_duration` and `retain_acked_messages`). For example,
        # if `time` corresponds to a point before the message retention
        # window (or to a point before the system's notion of the subscription
        # creation time), only retained messages will be marked as unacknowledged,
        # and already-expunged messages will not be restored.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # 
      class SeekResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **JSON Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # **YAML Example**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-other-app@appspot.gserviceaccount.com
        # role: roles/owner
        # - members:
        # - user:sean@example.com
        # role: roles/viewer
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PubsubV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A snapshot resource.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # The snapshot is guaranteed to exist up until this time.
        # A newly-created snapshot expires no later than 7 days from the time of its
        # creation. Its exact lifetime is determined at creation by the existing
        # backlog in the source subscription. Specifically, the lifetime of the
        # snapshot is `7 days - (age of oldest unacked message in the subscription)`.
        # For example, consider a subscription whose oldest unacked message is 3 days
        # old. If a snapshot is created from this subscription, the snapshot -- which
        # will always capture this 3-day-old backlog as long as the snapshot
        # exists -- will expire in 4 days. The service will refuse to create a
        # snapshot that would expire in less than 1 hour after creation.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The name of the snapshot.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the topic from which this snapshot is retaining messages.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # A subscription resource.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # This value is the maximum time after a subscriber receives a message
        # before the subscriber should acknowledge the message. After message
        # delivery but before the ack deadline expires and before the message is
        # acknowledged, it is an outstanding message and will not be delivered
        # again during that time (on a best-effort basis).
        # For pull subscriptions, this value is used as the initial value for the ack
        # deadline. To override this value for a given message, call
        # `ModifyAckDeadline` with the corresponding `ack_id` if using
        # non-streaming pull or send the `ack_id` in a
        # `StreamingModifyAckDeadlineRequest` if using streaming pull.
        # The minimum custom deadline you can specify is 10 seconds.
        # The maximum custom deadline you can specify is 600 seconds (10 minutes).
        # If this parameter is 0, a default value of 10 seconds is used.
        # For push delivery, this value is also used to set the request timeout for
        # the call to the push endpoint.
        # If the subscriber never acknowledges the message, the Pub/Sub
        # system will eventually redeliver the message.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # How long to retain unacknowledged messages in the subscription's backlog,
        # from the moment a message is published.
        # If `retain_acked_messages` is true, then this also configures the retention
        # of acknowledged messages, and thus configures how far back in time a `Seek`
        # can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10
        # minutes.
        # [ALPHA] This field is a part of a closed Alpha API.
        # Corresponds to the JSON property `messageRetentionDuration`
        # @return [String]
        attr_accessor :message_retention_duration
      
        # The name of the subscription. It must have the format
        # `"projects/`project`/subscriptions/`subscription`"`. ``subscription`` must
        # start with a letter, and contain only letters (`[A-Za-z]`), numbers
        # (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
        # plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
        # in length, and it must not start with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::PubsubV1::PushConfig]
        attr_accessor :push_config
      
        # Indicates whether to retain acknowledged messages. If true, then
        # messages are not expunged from the subscription's backlog, even if they are
        # acknowledged, until they fall out of the `message_retention_duration`
        # window.
        # [ALPHA] This field is a part of a closed Alpha API.
        # Corresponds to the JSON property `retainAckedMessages`
        # @return [Boolean]
        attr_accessor :retain_acked_messages
        alias_method :retain_acked_messages?, :retain_acked_messages
      
        # The name of the topic from which this subscription is receiving messages.
        # Format is `projects/`project`/topics/`topic``.
        # The value of this field will be `_deleted-topic_` if the topic has been
        # deleted.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @message_retention_duration = args[:message_retention_duration] if args.key?(:message_retention_duration)
          @name = args[:name] if args.key?(:name)
          @push_config = args[:push_config] if args.key?(:push_config)
          @retain_acked_messages = args[:retain_acked_messages] if args.key?(:retain_acked_messages)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A topic resource.
      class Topic
        include Google::Apis::Core::Hashable
      
        # The name of the topic. It must have the format
        # `"projects/`project`/topics/`topic`"`. ``topic`` must start with a letter,
        # and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
        # underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent
        # signs (`%`). It must be between 3 and 255 characters in length, and it
        # must not start with `"goog"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request for the UpdateSnapshot method.
      class UpdateSnapshotRequest
        include Google::Apis::Core::Hashable
      
        # A snapshot resource.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::PubsubV1::Snapshot]
        attr_accessor :snapshot
      
        # Indicates which fields in the provided snapshot to update.
        # Must be specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for the UpdateSubscription method.
      class UpdateSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        # A subscription resource.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::PubsubV1::Subscription]
        attr_accessor :subscription
      
        # Indicates which fields in the provided subscription to update.
        # Must be specified and non-empty.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
    end
  end
end
