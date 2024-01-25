##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Notify
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Notify < NotifyBase
            class V1 < Version
                class ServiceList < ListResource
                    ##
                    # Initialize the ServiceList
                    # @param [Version] version Version that contains the resource
                    # @return [ServiceList] ServiceList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Services"
                        
                    end
                    ##
                    # Create the ServiceInstance
                    # @param [String] friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
                    # @param [String] apn_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for APN Bindings.
                    # @param [String] gcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for GCM Bindings.
                    # @param [String] messaging_service_sid The SID of the [Messaging Service](https://www.twilio.com/docs/sms/send-messages#messaging-services) to use for SMS Bindings. This parameter must be set in order to send SMS notifications.
                    # @param [String] facebook_messenger_page_id Deprecated.
                    # @param [String] default_apn_notification_protocol_version The protocol version to use for sending APNS notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] default_gcm_notification_protocol_version The protocol version to use for sending GCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] fcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for FCM Bindings.
                    # @param [String] default_fcm_notification_protocol_version The protocol version to use for sending FCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [Boolean] log_enabled Whether to log notifications. Can be: `true` or `false` and the default is `true`.
                    # @param [String] alexa_skill_id Deprecated.
                    # @param [String] default_alexa_notification_protocol_version Deprecated.
                    # @param [String] delivery_callback_url URL to send delivery status callback.
                    # @param [Boolean] delivery_callback_enabled Callback configuration that enables delivery callbacks, default false
                    # @return [ServiceInstance] Created ServiceInstance
                    def create(
                        friendly_name: :unset, 
                        apn_credential_sid: :unset, 
                        gcm_credential_sid: :unset, 
                        messaging_service_sid: :unset, 
                        facebook_messenger_page_id: :unset, 
                        default_apn_notification_protocol_version: :unset, 
                        default_gcm_notification_protocol_version: :unset, 
                        fcm_credential_sid: :unset, 
                        default_fcm_notification_protocol_version: :unset, 
                        log_enabled: :unset, 
                        alexa_skill_id: :unset, 
                        default_alexa_notification_protocol_version: :unset, 
                        delivery_callback_url: :unset, 
                        delivery_callback_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'ApnCredentialSid' => apn_credential_sid,
                            'GcmCredentialSid' => gcm_credential_sid,
                            'MessagingServiceSid' => messaging_service_sid,
                            'FacebookMessengerPageId' => facebook_messenger_page_id,
                            'DefaultApnNotificationProtocolVersion' => default_apn_notification_protocol_version,
                            'DefaultGcmNotificationProtocolVersion' => default_gcm_notification_protocol_version,
                            'FcmCredentialSid' => fcm_credential_sid,
                            'DefaultFcmNotificationProtocolVersion' => default_fcm_notification_protocol_version,
                            'LogEnabled' => log_enabled,
                            'AlexaSkillId' => alexa_skill_id,
                            'DefaultAlexaNotificationProtocolVersion' => default_alexa_notification_protocol_version,
                            'DeliveryCallbackUrl' => delivery_callback_url,
                            'DeliveryCallbackEnabled' => delivery_callback_enabled,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        ServiceInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists ServiceInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] friendly_name The string that identifies the Service resources to read.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(friendly_name: :unset, limit: nil, page_size: nil)
                        self.stream(
                            friendly_name: friendly_name,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] friendly_name The string that identifies the Service resources to read.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(friendly_name: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            friendly_name: friendly_name,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields ServiceInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of ServiceInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] friendly_name The string that identifies the Service resources to read.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of ServiceInstance
                    def page(friendly_name: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        ServicePage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of ServiceInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of ServiceInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    ServicePage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Notify.V1.ServiceList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
                class ServiceContext < InstanceContext
                    ##
                    # Initialize the ServiceContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid The Twilio-provided string that uniquely identifies the Service resource to update.
                    # @return [ServiceContext] ServiceContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/Services/#{@solution[:sid]}"

                        # Dependents
                        @notifications = nil
                        @bindings = nil
                    end
                    ##
                    # Delete the ServiceInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the ServiceInstance
                    # @return [ServiceInstance] Fetched ServiceInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        ServiceInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the ServiceInstance
                    # @param [String] friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
                    # @param [String] apn_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for APN Bindings.
                    # @param [String] gcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for GCM Bindings.
                    # @param [String] messaging_service_sid The SID of the [Messaging Service](https://www.twilio.com/docs/sms/send-messages#messaging-services) to use for SMS Bindings. This parameter must be set in order to send SMS notifications.
                    # @param [String] facebook_messenger_page_id Deprecated.
                    # @param [String] default_apn_notification_protocol_version The protocol version to use for sending APNS notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] default_gcm_notification_protocol_version The protocol version to use for sending GCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] fcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for FCM Bindings.
                    # @param [String] default_fcm_notification_protocol_version The protocol version to use for sending FCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [Boolean] log_enabled Whether to log notifications. Can be: `true` or `false` and the default is `true`.
                    # @param [String] alexa_skill_id Deprecated.
                    # @param [String] default_alexa_notification_protocol_version Deprecated.
                    # @param [String] delivery_callback_url URL to send delivery status callback.
                    # @param [Boolean] delivery_callback_enabled Callback configuration that enables delivery callbacks, default false
                    # @return [ServiceInstance] Updated ServiceInstance
                    def update(
                        friendly_name: :unset, 
                        apn_credential_sid: :unset, 
                        gcm_credential_sid: :unset, 
                        messaging_service_sid: :unset, 
                        facebook_messenger_page_id: :unset, 
                        default_apn_notification_protocol_version: :unset, 
                        default_gcm_notification_protocol_version: :unset, 
                        fcm_credential_sid: :unset, 
                        default_fcm_notification_protocol_version: :unset, 
                        log_enabled: :unset, 
                        alexa_skill_id: :unset, 
                        default_alexa_notification_protocol_version: :unset, 
                        delivery_callback_url: :unset, 
                        delivery_callback_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'ApnCredentialSid' => apn_credential_sid,
                            'GcmCredentialSid' => gcm_credential_sid,
                            'MessagingServiceSid' => messaging_service_sid,
                            'FacebookMessengerPageId' => facebook_messenger_page_id,
                            'DefaultApnNotificationProtocolVersion' => default_apn_notification_protocol_version,
                            'DefaultGcmNotificationProtocolVersion' => default_gcm_notification_protocol_version,
                            'FcmCredentialSid' => fcm_credential_sid,
                            'DefaultFcmNotificationProtocolVersion' => default_fcm_notification_protocol_version,
                            'LogEnabled' => log_enabled,
                            'AlexaSkillId' => alexa_skill_id,
                            'DefaultAlexaNotificationProtocolVersion' => default_alexa_notification_protocol_version,
                            'DeliveryCallbackUrl' => delivery_callback_url,
                            'DeliveryCallbackEnabled' => delivery_callback_enabled,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        ServiceInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the notifications
                    # @return [NotificationList]
                    # @return [NotificationContext]
                    def notifications
                      unless @notifications
                        @notifications = NotificationList.new(
                                @version, service_sid: @solution[:sid], )
                      end
                      @notifications
                    end
                    ##
                    # Access the bindings
                    # @return [BindingList]
                    # @return [BindingContext] if sid was passed.
                    def bindings(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return BindingContext.new(@version, @solution[:sid],sid )
                        end

                        unless @bindings
                            @bindings = BindingList.new(
                                @version, service_sid: @solution[:sid], )
                        end

                     @bindings
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Notify.V1.ServiceContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Notify.V1.ServiceContext #{context}>"
                    end
                end

                class ServicePage < Page
                    ##
                    # Initialize the ServicePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ServicePage] ServicePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ServiceInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ServiceInstance] ServiceInstance
                    def get_instance(payload)
                        ServiceInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Notify.V1.ServicePage>'
                    end
                end
                class ServiceInstance < InstanceResource
                    ##
                    # Initialize the ServiceInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Service
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ServiceInstance] ServiceInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'apn_credential_sid' => payload['apn_credential_sid'],
                            'gcm_credential_sid' => payload['gcm_credential_sid'],
                            'fcm_credential_sid' => payload['fcm_credential_sid'],
                            'messaging_service_sid' => payload['messaging_service_sid'],
                            'facebook_messenger_page_id' => payload['facebook_messenger_page_id'],
                            'default_apn_notification_protocol_version' => payload['default_apn_notification_protocol_version'],
                            'default_gcm_notification_protocol_version' => payload['default_gcm_notification_protocol_version'],
                            'default_fcm_notification_protocol_version' => payload['default_fcm_notification_protocol_version'],
                            'log_enabled' => payload['log_enabled'],
                            'url' => payload['url'],
                            'links' => payload['links'],
                            'alexa_skill_id' => payload['alexa_skill_id'],
                            'default_alexa_notification_protocol_version' => payload['default_alexa_notification_protocol_version'],
                            'delivery_callback_url' => payload['delivery_callback_url'],
                            'delivery_callback_enabled' => payload['delivery_callback_enabled'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ServiceContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ServiceContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Service resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Service resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the resource.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for APN Bindings.
                    def apn_credential_sid
                        @properties['apn_credential_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for GCM Bindings.
                    def gcm_credential_sid
                        @properties['gcm_credential_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for FCM Bindings.
                    def fcm_credential_sid
                        @properties['fcm_credential_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Messaging Service](https://www.twilio.com/docs/sms/send-messages#messaging-services) to use for SMS Bindings. In order to send SMS notifications this parameter has to be set.
                    def messaging_service_sid
                        @properties['messaging_service_sid']
                    end
                    
                    ##
                    # @return [String] Deprecated.
                    def facebook_messenger_page_id
                        @properties['facebook_messenger_page_id']
                    end
                    
                    ##
                    # @return [String] The protocol version to use for sending APNS notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    def default_apn_notification_protocol_version
                        @properties['default_apn_notification_protocol_version']
                    end
                    
                    ##
                    # @return [String] The protocol version to use for sending GCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    def default_gcm_notification_protocol_version
                        @properties['default_gcm_notification_protocol_version']
                    end
                    
                    ##
                    # @return [String] The protocol version to use for sending FCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    def default_fcm_notification_protocol_version
                        @properties['default_fcm_notification_protocol_version']
                    end
                    
                    ##
                    # @return [Boolean] Whether to log notifications. Can be: `true` or `false` and the default is `true`.
                    def log_enabled
                        @properties['log_enabled']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Service resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] The URLs of the Binding, Notification, Segment, and User resources related to the service.
                    def links
                        @properties['links']
                    end
                    
                    ##
                    # @return [String] Deprecated.
                    def alexa_skill_id
                        @properties['alexa_skill_id']
                    end
                    
                    ##
                    # @return [String] Deprecated.
                    def default_alexa_notification_protocol_version
                        @properties['default_alexa_notification_protocol_version']
                    end
                    
                    ##
                    # @return [String] URL to send delivery status callback.
                    def delivery_callback_url
                        @properties['delivery_callback_url']
                    end
                    
                    ##
                    # @return [Boolean] Callback configuration that enables delivery callbacks, default false
                    def delivery_callback_enabled
                        @properties['delivery_callback_enabled']
                    end
                    
                    ##
                    # Delete the ServiceInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the ServiceInstance
                    # @return [ServiceInstance] Fetched ServiceInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the ServiceInstance
                    # @param [String] friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
                    # @param [String] apn_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for APN Bindings.
                    # @param [String] gcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for GCM Bindings.
                    # @param [String] messaging_service_sid The SID of the [Messaging Service](https://www.twilio.com/docs/sms/send-messages#messaging-services) to use for SMS Bindings. This parameter must be set in order to send SMS notifications.
                    # @param [String] facebook_messenger_page_id Deprecated.
                    # @param [String] default_apn_notification_protocol_version The protocol version to use for sending APNS notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] default_gcm_notification_protocol_version The protocol version to use for sending GCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [String] fcm_credential_sid The SID of the [Credential](https://www.twilio.com/docs/notify/api/credential-resource) to use for FCM Bindings.
                    # @param [String] default_fcm_notification_protocol_version The protocol version to use for sending FCM notifications. Can be overridden on a Binding by Binding basis when creating a [Binding](https://www.twilio.com/docs/notify/api/binding-resource) resource.
                    # @param [Boolean] log_enabled Whether to log notifications. Can be: `true` or `false` and the default is `true`.
                    # @param [String] alexa_skill_id Deprecated.
                    # @param [String] default_alexa_notification_protocol_version Deprecated.
                    # @param [String] delivery_callback_url URL to send delivery status callback.
                    # @param [Boolean] delivery_callback_enabled Callback configuration that enables delivery callbacks, default false
                    # @return [ServiceInstance] Updated ServiceInstance
                    def update(
                        friendly_name: :unset, 
                        apn_credential_sid: :unset, 
                        gcm_credential_sid: :unset, 
                        messaging_service_sid: :unset, 
                        facebook_messenger_page_id: :unset, 
                        default_apn_notification_protocol_version: :unset, 
                        default_gcm_notification_protocol_version: :unset, 
                        fcm_credential_sid: :unset, 
                        default_fcm_notification_protocol_version: :unset, 
                        log_enabled: :unset, 
                        alexa_skill_id: :unset, 
                        default_alexa_notification_protocol_version: :unset, 
                        delivery_callback_url: :unset, 
                        delivery_callback_enabled: :unset
                    )

                        context.update(
                            friendly_name: friendly_name, 
                            apn_credential_sid: apn_credential_sid, 
                            gcm_credential_sid: gcm_credential_sid, 
                            messaging_service_sid: messaging_service_sid, 
                            facebook_messenger_page_id: facebook_messenger_page_id, 
                            default_apn_notification_protocol_version: default_apn_notification_protocol_version, 
                            default_gcm_notification_protocol_version: default_gcm_notification_protocol_version, 
                            fcm_credential_sid: fcm_credential_sid, 
                            default_fcm_notification_protocol_version: default_fcm_notification_protocol_version, 
                            log_enabled: log_enabled, 
                            alexa_skill_id: alexa_skill_id, 
                            default_alexa_notification_protocol_version: default_alexa_notification_protocol_version, 
                            delivery_callback_url: delivery_callback_url, 
                            delivery_callback_enabled: delivery_callback_enabled, 
                        )
                    end

                    ##
                    # Access the notifications
                    # @return [notifications] notifications
                    def notifications
                        context.notifications
                    end

                    ##
                    # Access the bindings
                    # @return [bindings] bindings
                    def bindings
                        context.bindings
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Notify.V1.ServiceInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Notify.V1.ServiceInstance #{values}>"
                    end
                end

            end
        end
    end
end
