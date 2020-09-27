class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新品'},
    { id: 3, name: '中古'},
  ]
end