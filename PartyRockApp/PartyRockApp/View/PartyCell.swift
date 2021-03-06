//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by dvt on 2017/10/11.
//  Copyright © 2017 dvt. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch{
            }
        }
    }
    
//    func configure(with partyRock: PartyRock){
//        videoTitle.text = partyRock.videoTitle
//        let url = URL(string: partyRock.imageURL)!
//        let urlSession:URLSession = URLSession.shared
//        let task = urlSession.dataTask(with: url, completionHandler: {(data,response,error) in
//            if let responseData = data {
//                self.videoPreviewImage.image = UIImage(data: responseData)
//            }
//            if let response = response {
//                print(response)
//            }
//            if let error = error {
//                print(error)
//            }
//        })
//        task.resume()
//    }
}
