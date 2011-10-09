require 'uri'
require 'net/ssh'
require 'net/sftp'

module CarrierWave
  module Storage

    class SFTP < Abstract

      #
      # Configuration options:
      #   sftp_host = 'hostname.example.com'
      #   sftp_user = 'example_username'
      #   ssh_options = { :password => 'example' } # or...
      #   ssh_options = { :keys => ['/home/me/.ssh/id_rsa'] }
      #
      # For a list of SSH options, see:
      #   http://net-ssh.github.com/ssh/v2/api/classes/Net/SSH.html#M000002
      #   (These options are directly passed to Net::SSH)
      #

      #
      # Abstraction for the file stored remotely
      #
      class File
        def initialize(uploader, base, path)
          @uploader = uploader
          @base = base
          @path = path
        end

        # Remote path
        def path
          @path
        end

        # Read remote file contents
        def read
          raise "Not Implemented"
        end

        # URL to remote file
        def url
          # HACK: Revisit and make configurable separate from the connection options.
          "http://#{sftp_host}/#{path}"
        end

        def store(file)
          raise "Not Implemented"
        end

        protected

          def connection
            @base.connection
          end

          def full_remote_path
            remote_path   = ::File.join(@uploader.sftp_base_path, self.path) if @uploader.sftp_base_path
            remote_path ||= self.path
            remote_path
          end
      end

      #
      # CarrierWave storage plugin methods
      #

      def store!(file)
        f = CarrierWave::Storage::SFTP::File.new(uploader, self, uploader.store_path)
        f.store(file)
        f
      end

      def retrieve!(identifier)
        CarrierWave::Storage::SFTP::File.new(uploader, self, uploader.store_path(identifier))
      end

      def connection
        @connection ||= ::Net::SFTP.new(uploader.sftp_host, uploader.sftp_user, uploader.ssh_options)
      end

    end # SFTP
  end # Storage
end # CarrierWave

# Add the :sftp shortcut
CarrierWave::Uploader::Base.storage_engines[:sftp] = "CarrierWave::Storage::SFTP"

# And the config options
CarrierWave::Uploader::Base.add_config :sftp_host
CarrierWave::Uploader::Base.add_config :sftp_user
CarrierWave::Uploader::Base.add_config :sftp_base_path
CarrierWave::Uploader::Base.add_config :ssh_options
