//
//  CollectionViewController.swift
//  IngilizceBulmacaUygulama
//
//  Created by Melih Şişkular on 23.05.2023.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Ana Sayfa"
      
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Bulmacalar"
        
        collectionView.backgroundColor = .systemGray5
        
        view.backgroundColor = .systemGray5
        // Do any additional setup after loading the view.
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSegueCrossword" {
            let destination = segue.destination as! CrossWordViewController
            
            destination.choosenTitle = bulmacalar[index].title
            destination.choosenIndexPathRow = index
            BezierCrossWordView.whichCrossword = index //index değeri atandı yani hangi bulmaca ise onun çizdiğimiz görüntüsü gelecektir!
            
        }
    }
    
}

extension CollectionViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bulmacalar.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.setup(with: bulmacalar[indexPath.row])
        
        
        
        return cell
    }
}

extension CollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: SingletonView.shared.width * 0.45, height: SingletonView.shared.width * 0.6)
    }
}

extension CollectionViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.row + 1). Bulmacaya Tıklandı")
        print(bulmacalar[indexPath.row].title)
        
        index = indexPath.row
        
        performSegue(withIdentifier: "toSegueCrossword", sender: nil)
    }
}
