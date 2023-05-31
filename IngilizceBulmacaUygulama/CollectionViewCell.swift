//
//  CollectionViewCell.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 24.05.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var TitleLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    func setup(with Crossword: Bulmaca) {
        imageView.image = Crossword.image
        TitleLabel.text = Crossword.title
        scoreLabel.text =
        "Skor: \(Crossword.score)/\(Crossword.TurkishWordsArray.count)"
    }
    
}
