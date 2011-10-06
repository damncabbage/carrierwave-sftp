# CarrierWave SFTP

## Usage

Here's a plain example using a username / password combination:

```
CarrierWave.configure do |config|
	config.storage = :sftp
	config.sftp_user = "example"
	config.sftp_host = "hostname.example.com"
	config.ssh_options = { :password => 'pleasedontusethis' }
end
```

Or alternatively:

```
class AvatarUploader < CarrierWave::Uploader::Base
	storage :sftp
	config.sftp_user = "example"
	config.sftp_host = "hostname.example.com"
	config.ssh_options = { :keys => ['/path/to/your/id_rsa'] }
end
```

(See the [Net-SSH reference](http://net-ssh.github.com/ssh/v2/api/classes/Net/SSH.html#M000002) for the full list of ssh_options. Note that these options are directly passed to Net::SFTP / Net::SSH.)


## Licence

&copy; 2011 Robert Howard. Unhyperbole is distributed under an [MIT Licence](http://en.wikipedia.org/wiki/MIT_License).




