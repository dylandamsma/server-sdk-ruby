# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: livekit_models.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("livekit_models.proto", :syntax => :proto3) do
    add_message "livekit.Room" do
      optional :sid, :string, 1
      optional :name, :string, 2
      optional :empty_timeout, :uint32, 3
      optional :max_participants, :uint32, 4
      optional :creation_time, :int64, 5
      optional :turn_password, :string, 6
      repeated :enabled_codecs, :message, 7, "livekit.Codec"
      optional :metadata, :string, 8
      optional :num_participants, :uint32, 9
      optional :active_recording, :bool, 10
    end
    add_message "livekit.Codec" do
      optional :mime, :string, 1
      optional :fmtp_line, :string, 2
    end
    add_message "livekit.ParticipantPermission" do
      optional :can_subscribe, :bool, 1
      optional :can_publish, :bool, 2
      optional :can_publish_data, :bool, 3
      repeated :can_publish_sources, :enum, 9, "livekit.TrackSource"
      optional :hidden, :bool, 7
      optional :recorder, :bool, 8
    end
    add_message "livekit.ParticipantInfo" do
      optional :sid, :string, 1
      optional :identity, :string, 2
      optional :state, :enum, 3, "livekit.ParticipantInfo.State"
      repeated :tracks, :message, 4, "livekit.TrackInfo"
      optional :metadata, :string, 5
      optional :joined_at, :int64, 6
      optional :name, :string, 9
      optional :version, :uint32, 10
      optional :permission, :message, 11, "livekit.ParticipantPermission"
      optional :region, :string, 12
      optional :is_publisher, :bool, 13
    end
    add_enum "livekit.ParticipantInfo.State" do
      value :JOINING, 0
      value :JOINED, 1
      value :ACTIVE, 2
      value :DISCONNECTED, 3
    end
    add_message "livekit.Encryption" do
    end
    add_enum "livekit.Encryption.Type" do
      value :NONE, 0
      value :GCM, 1
      value :CUSTOM, 2
    end
    add_message "livekit.SimulcastCodecInfo" do
      optional :mime_type, :string, 1
      optional :mid, :string, 2
      optional :cid, :string, 3
      repeated :layers, :message, 4, "livekit.VideoLayer"
    end
    add_message "livekit.TrackInfo" do
      optional :sid, :string, 1
      optional :type, :enum, 2, "livekit.TrackType"
      optional :name, :string, 3
      optional :muted, :bool, 4
      optional :width, :uint32, 5
      optional :height, :uint32, 6
      optional :simulcast, :bool, 7
      optional :disable_dtx, :bool, 8
      optional :source, :enum, 9, "livekit.TrackSource"
      repeated :layers, :message, 10, "livekit.VideoLayer"
      optional :mime_type, :string, 11
      optional :mid, :string, 12
      repeated :codecs, :message, 13, "livekit.SimulcastCodecInfo"
      optional :stereo, :bool, 14
      optional :disable_red, :bool, 15
      optional :encryption, :enum, 16, "livekit.Encryption.Type"
    end
    add_message "livekit.VideoLayer" do
      optional :quality, :enum, 1, "livekit.VideoQuality"
      optional :width, :uint32, 2
      optional :height, :uint32, 3
      optional :bitrate, :uint32, 4
      optional :ssrc, :uint32, 5
    end
    add_message "livekit.DataPacket" do
      optional :kind, :enum, 1, "livekit.DataPacket.Kind"
      oneof :value do
        optional :user, :message, 2, "livekit.UserPacket"
        optional :speaker, :message, 3, "livekit.ActiveSpeakerUpdate"
      end
    end
    add_enum "livekit.DataPacket.Kind" do
      value :RELIABLE, 0
      value :LOSSY, 1
    end
    add_message "livekit.ActiveSpeakerUpdate" do
      repeated :speakers, :message, 1, "livekit.SpeakerInfo"
    end
    add_message "livekit.SpeakerInfo" do
      optional :sid, :string, 1
      optional :level, :float, 2
      optional :active, :bool, 3
    end
    add_message "livekit.UserPacket" do
      optional :participant_sid, :string, 1
      optional :payload, :bytes, 2
      repeated :destination_sids, :string, 3
    end
    add_message "livekit.ParticipantTracks" do
      optional :participant_sid, :string, 1
      repeated :track_sids, :string, 2
    end
    add_message "livekit.ServerInfo" do
      optional :edition, :enum, 1, "livekit.ServerInfo.Edition"
      optional :version, :string, 2
      optional :protocol, :int32, 3
      optional :region, :string, 4
      optional :node_id, :string, 5
      optional :debug_info, :string, 6
    end
    add_enum "livekit.ServerInfo.Edition" do
      value :Standard, 0
      value :Cloud, 1
    end
    add_message "livekit.ClientInfo" do
      optional :sdk, :enum, 1, "livekit.ClientInfo.SDK"
      optional :version, :string, 2
      optional :protocol, :int32, 3
      optional :os, :string, 4
      optional :os_version, :string, 5
      optional :device_model, :string, 6
      optional :browser, :string, 7
      optional :browser_version, :string, 8
      optional :address, :string, 9
      optional :network, :string, 10
    end
    add_enum "livekit.ClientInfo.SDK" do
      value :UNKNOWN, 0
      value :JS, 1
      value :SWIFT, 2
      value :ANDROID, 3
      value :FLUTTER, 4
      value :GO, 5
      value :UNITY, 6
    end
    add_message "livekit.ClientConfiguration" do
      optional :video, :message, 1, "livekit.VideoConfiguration"
      optional :screen, :message, 2, "livekit.VideoConfiguration"
      optional :resume_connection, :enum, 3, "livekit.ClientConfigSetting"
      optional :disabled_codecs, :message, 4, "livekit.DisabledCodecs"
      optional :force_relay, :enum, 5, "livekit.ClientConfigSetting"
    end
    add_message "livekit.VideoConfiguration" do
      optional :hardware_encoder, :enum, 1, "livekit.ClientConfigSetting"
    end
    add_message "livekit.DisabledCodecs" do
      repeated :codecs, :message, 1, "livekit.Codec"
    end
    add_message "livekit.RTPStats" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :duration, :double, 3
      optional :packets, :uint32, 4
      optional :packet_rate, :double, 5
      optional :bytes, :uint64, 6
      optional :header_bytes, :uint64, 39
      optional :bitrate, :double, 7
      optional :packets_lost, :uint32, 8
      optional :packet_loss_rate, :double, 9
      optional :packet_loss_percentage, :float, 10
      optional :packets_duplicate, :uint32, 11
      optional :packet_duplicate_rate, :double, 12
      optional :bytes_duplicate, :uint64, 13
      optional :header_bytes_duplicate, :uint64, 40
      optional :bitrate_duplicate, :double, 14
      optional :packets_padding, :uint32, 15
      optional :packet_padding_rate, :double, 16
      optional :bytes_padding, :uint64, 17
      optional :header_bytes_padding, :uint64, 41
      optional :bitrate_padding, :double, 18
      optional :packets_out_of_order, :uint32, 19
      optional :frames, :uint32, 20
      optional :frame_rate, :double, 21
      optional :jitter_current, :double, 22
      optional :jitter_max, :double, 23
      map :gap_histogram, :int32, :uint32, 24
      optional :nacks, :uint32, 25
      optional :nack_acks, :uint32, 37
      optional :nack_misses, :uint32, 26
      optional :nack_repeated, :uint32, 38
      optional :plis, :uint32, 27
      optional :last_pli, :message, 28, "google.protobuf.Timestamp"
      optional :firs, :uint32, 29
      optional :last_fir, :message, 30, "google.protobuf.Timestamp"
      optional :rtt_current, :uint32, 31
      optional :rtt_max, :uint32, 32
      optional :key_frames, :uint32, 33
      optional :last_key_frame, :message, 34, "google.protobuf.Timestamp"
      optional :layer_lock_plis, :uint32, 35
      optional :last_layer_lock_pli, :message, 36, "google.protobuf.Timestamp"
    end
    add_message "livekit.TimedVersion" do
      optional :unix_micro, :int64, 1
      optional :ticks, :int32, 2
    end
    add_enum "livekit.TrackType" do
      value :AUDIO, 0
      value :VIDEO, 1
      value :DATA, 2
    end
    add_enum "livekit.TrackSource" do
      value :UNKNOWN, 0
      value :CAMERA, 1
      value :MICROPHONE, 2
      value :SCREEN_SHARE, 3
      value :SCREEN_SHARE_AUDIO, 4
    end
    add_enum "livekit.VideoQuality" do
      value :LOW, 0
      value :MEDIUM, 1
      value :HIGH, 2
      value :OFF, 3
    end
    add_enum "livekit.ConnectionQuality" do
      value :POOR, 0
      value :GOOD, 1
      value :EXCELLENT, 2
    end
    add_enum "livekit.ClientConfigSetting" do
      value :UNSET, 0
      value :DISABLED, 1
      value :ENABLED, 2
    end
    add_enum "livekit.DisconnectReason" do
      value :UNKNOWN_REASON, 0
      value :CLIENT_INITIATED, 1
      value :DUPLICATE_IDENTITY, 2
      value :SERVER_SHUTDOWN, 3
      value :PARTICIPANT_REMOVED, 4
      value :ROOM_DELETED, 5
      value :STATE_MISMATCH, 6
      value :JOIN_FAILURE, 7
    end
    add_enum "livekit.ReconnectReason" do
      value :RR_UNKOWN, 0
      value :RR_SIGNAL_DISCONNECTED, 1
      value :RR_PUBLISHER_FAILED, 2
      value :RR_SUBSCRIBER_FAILED, 3
      value :RR_SWITCH_CANDIDATE, 4
    end
  end
end

module LiveKit
  module Proto
    Room = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Room").msgclass
    Codec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Codec").msgclass
    ParticipantPermission = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantPermission").msgclass
    ParticipantInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantInfo").msgclass
    ParticipantInfo::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantInfo.State").enummodule
    Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Encryption").msgclass
    Encryption::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Encryption.Type").enummodule
    SimulcastCodecInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.SimulcastCodecInfo").msgclass
    TrackInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TrackInfo").msgclass
    VideoLayer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.VideoLayer").msgclass
    DataPacket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DataPacket").msgclass
    DataPacket::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DataPacket.Kind").enummodule
    ActiveSpeakerUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ActiveSpeakerUpdate").msgclass
    SpeakerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.SpeakerInfo").msgclass
    UserPacket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UserPacket").msgclass
    ParticipantTracks = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantTracks").msgclass
    ServerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ServerInfo").msgclass
    ServerInfo::Edition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ServerInfo.Edition").enummodule
    ClientInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ClientInfo").msgclass
    ClientInfo::SDK = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ClientInfo.SDK").enummodule
    ClientConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ClientConfiguration").msgclass
    VideoConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.VideoConfiguration").msgclass
    DisabledCodecs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DisabledCodecs").msgclass
    RTPStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.RTPStats").msgclass
    TimedVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TimedVersion").msgclass
    TrackType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TrackType").enummodule
    TrackSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TrackSource").enummodule
    VideoQuality = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.VideoQuality").enummodule
    ConnectionQuality = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ConnectionQuality").enummodule
    ClientConfigSetting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ClientConfigSetting").enummodule
    DisconnectReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DisconnectReason").enummodule
    ReconnectReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ReconnectReason").enummodule
  end
end
