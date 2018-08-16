1. Rails setup
- `rails new instavac --skip-coffee --database=postgresql -T`
- `rails generate scaffold Post title:string`

2. Setup AWS Account
- Create a new user for S3 screenshot 1
- Give it some rights
- Take those beautiful token and put them in the rails credentials  screenshot 2 & 3
- create bucket (beware of the region!)

3. ActiveStorage Setup - https://edgeguides.rubyonrails.org/active_storage_overview.html
- `rails active_storage:install`
- Add the mention "has_one_attached :images"
- storage.yml
- add gem "aws-sdk-s3", require: false
