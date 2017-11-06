//
//  Constants.swift
//  Pixel-City
//
//  Created by Franziska Kammerl on 11/1/17.
//  Copyright © 2017 Franziska Kammerl. All rights reserved.
//

import Foundation

// Flickr API Key : abf72a4412f2743adcba71a005406dd5
// Flickr URL: https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=ba61f9c6b7c18d89ca60eaf221113fae&lat=42.8&lon=122.3&radius=1&radius_units=mi&per_page=15&format=json&nojsoncallback=1
//https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=61ad68923841086199d188c73eb0c46e&text=&lat=&lon=&format=json&nojsoncallback=1

//https://farm5.staticflickr.com/4542/26352653689_a9cc755719_k.jpg

let apiKey = "abf72a4412f2743adcba71a005406dd5"

func flickrUrl(forAPIKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
