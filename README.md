# CarrierWave SFTP

## Usage

Here's a plain example using a username / password combination:

```
CarrierWave.configure do |config|
	config.storage = :sftp
	config.sftp_username = "example"
	config.sftp_key_file = "/path/to/your/id_rsa.pub"
end
```

Or alternatively:

```
class AvatarUploader < CarrierWave::Uploader::Base
	storage :sftp
	config.sftp_username = "example"
	config.sftp_key_file = "/path/to/your/id_rsa.pub"
end
```


## Licence

&copy; 2011 Robert Howard. Unhyperbole is distributed under an [MIT Licence](http://en.wikipedia.org/wiki/MIT_License).




