User.create!([
  {username: "anu", email: "anu@gmail.com", encrypted_password: "$2a$10$ZS9TG.QXRCPUvzKOVks0ke7N1xehXKxsjdIMEFNLKgTq9jjHOKgym", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-27 19:21:11", last_sign_in_at: "2014-05-27 19:21:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", gender: true, admin: false},
  {username: "admin", email: "admin@event.com", encrypted_password: "$2a$10$N7BuY/QrVwIh.wtLBLxj6OGrMnLWSpD/I6lKp6ayNDzP6gbdXpdvK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-05-28 05:37:23", last_sign_in_at: "2014-05-28 05:37:23", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", gender: false, admin: true}
])
Event.create!([
  {name: "Fun And Music", startfrom: "2014-05-27 00:00:00", endon: "2014-05-31 00:00:00", entry_fee: 549, short_desc: "", long_desc: ""},
  {name: "Music Masti", startfrom: "2014-05-28 00:00:00", endon: "2014-05-31 00:00:00", entry_fee: 600, short_desc: nil, long_desc: nil},
  {name: "Masti Magic", startfrom: "2014-05-28 00:00:00", endon: "2014-05-31 00:00:00", entry_fee: 1500, short_desc: nil, long_desc: nil},
  {name: "Magic Time", startfrom: "2014-05-30 00:00:00", endon: "2014-05-31 00:00:00", entry_fee: 600, short_desc: "", long_desc: ""},
  {name: "New World", startfrom: "2014-05-29 00:00:00", endon: "2014-05-29 00:00:00", entry_fee: 5667, short_desc: "hello", long_desc: "hello"}
])
