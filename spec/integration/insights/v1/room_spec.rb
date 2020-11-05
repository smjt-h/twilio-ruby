##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Room' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://insights.twilio.com/v1/Video/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "room_type": "go",
          "unique_participant_identities": 0,
          "codecs": [
              "VP8"
          ],
          "max_participants": 0,
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "create_time": "2015-07-30T20:00:00Z",
          "end_reason": "room_ended_via_api",
          "duration_sec": 50000000,
          "room_status": "in_progress",
          "media_region": "us1",
          "recording_enabled": false,
          "edge_location": "Ashburn",
          "max_concurrent_participants": 0,
          "unique_participants": 0,
          "room_name": "room_name",
          "created_method": "sdk",
          "total_participant_duration_sec": 50000000,
          "status_callback_method": "GET",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "end_time": "2015-07-30T20:00:00Z",
          "total_recording_duration_sec": 50000000,
          "processing_state": "complete",
          "concurrent_participants": 0,
          "status_callback": "http://www.example.com",
          "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "participants": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants"
          }
      }
      ]
    ))

    actual = @client.insights.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.insights.v1.rooms.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://insights.twilio.com/v1/Video/Rooms',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://insights.twilio.com/v1/Video/Rooms?PageSize=50&Page=0",
              "url": "https://insights.twilio.com/v1/Video/Rooms?PageSize=50&Page=0",
              "page_size": 50,
              "next_page_url": null,
              "key": "rooms",
              "page": 0,
              "previous_page_url": null
          },
          "rooms": []
      }
      ]
    ))

    actual = @client.insights.v1.rooms.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://insights.twilio.com/v1/Video/Rooms?PageSize=50&Page=0",
              "url": "https://insights.twilio.com/v1/Video/Rooms?PageSize=50&Page=0",
              "page_size": 50,
              "next_page_url": null,
              "key": "rooms",
              "page": 0,
              "previous_page_url": null
          },
          "rooms": [
              {
                  "room_type": "go",
                  "unique_participant_identities": 0,
                  "codecs": [
                      "VP8"
                  ],
                  "max_participants": 0,
                  "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "create_time": "2015-07-30T20:00:00Z",
                  "end_reason": "room_ended_via_api",
                  "duration_sec": 50000000,
                  "room_status": "in_progress",
                  "media_region": "us1",
                  "recording_enabled": false,
                  "edge_location": "Ashburn",
                  "max_concurrent_participants": 0,
                  "unique_participants": 0,
                  "room_name": "room_name",
                  "created_method": "sdk",
                  "total_participant_duration_sec": 50000000,
                  "status_callback_method": "GET",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "end_time": "2015-07-30T20:00:00Z",
                  "total_recording_duration_sec": 50000000,
                  "processing_state": "complete",
                  "concurrent_participants": 0,
                  "status_callback": "http://www.example.com",
                  "url": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "links": {
                      "participants": "https://insights.twilio.com/v1/Video/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants"
                  }
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.rooms.list()

    expect(actual).to_not eq(nil)
  end
end