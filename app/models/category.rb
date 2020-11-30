class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '女性漫画' },
    { id: 3, name: '少女漫画' },
    { id: 4, name: '青年漫画' },
    { id: 5, name: '少年漫画' },
    { id: 6, name: '恋愛' },
    { id: 7, name: '裏社会・アングラ' },
    { id: 8, name: 'ヒューマンドラマ' },
    { id: 9, name: 'ギャグ・コメディー' },
    { id: 10, name: '職業・ビジネス' },
    { id: 11, name: 'サスペンス・ミステリー' },
    { id: 12, name: '歴史・時代劇' },
    { id: 13, name: 'スポーツ' },
    { id: 14, name: 'アクション・アドベンチャー' },
    { id: 15, name: 'ホラー' },
    { id: 16, name: 'SF・ファンタジー' },
    { id: 17, name: 'グルメ' },
    { id: 18, name: '医療・病院系' }
  ]
end
