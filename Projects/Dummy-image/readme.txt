build.bat produces a 4KiB file (dummy-image)
copy dummy-image dummy-image.hdv
Use HxD to 'Insert bytes...' to insert 0x22000 zero padding bytes to produce a 0x23000 (140KiB) byte dummy-image.dsk file
7-zip both as gzip's
