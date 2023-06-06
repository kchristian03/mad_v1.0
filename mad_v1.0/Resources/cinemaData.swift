//
//  cinemaData.swift
//  mad_v1.0
//
//  Created by MacBook Pro on 06/06/23.
//

import Foundation

let cinemas: [Cinema] = [
    Cinema(id: 1, name: "Ciputra World", address: "Jl. Mayjen Sungkono No.89, Gn. Sari, Kec. Dukuhpakis, Surabaya, Jawa Timur 60225",
            coordinates: Cinema.Coordinates(latitude: -7.293442343525911, longitude: 112.7192663846563),
            films: [
                Film(id: 1, title: "Spider-Man: Across the Spider-Verse", genre: "Animation, Action, Adventure", releaseDate: "May 31, 2023", duration: "2h 16m", rating: "4.3", imageName: "poster1", category: "Popular Now", synopsis: "After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most."),
                Film(id: 3, title: "Doctor Strange in the Multiverse of Madness", genre: "Fantasy, Action, Adventure", releaseDate: "May 5, 2022", duration: "2h 6m", rating: "3.5", imageName: "poster3", category: "Popular Now", synopsis: "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary."),
                Film(id: 6, title: "The Bad Guys", genre: "Animation, Action, Adventure, Crime, Comedy, Family", releaseDate: "Mar 22, 2022", duration: "2h 40m", rating: "3.5", imageName: "poster6", category: "Popular Now", synopsis: "The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.")
            ]),
    Cinema(id: 2, name: "Lenmarc", address: "Jl. Mayjend. Jonosewojo No.9, Pradahkalikendal, Kec. Dukuhpakis, Surabaya, Jawa Timur 60226",
            coordinates: Cinema.Coordinates(latitude: -7.285498381631056, longitude: 112.68088132324584),
            films: [
                Film(id: 2, title: "Black Panther: Wakanda Forever", genre: "Action, Adventure, Fantasy, Science Fiction", releaseDate: "Nov 2, 2022", duration: "2h 20m", rating: "4.2", imageName: "poster2", category: "Coming Soon", synopsis: "The sequel to Black Panther (2018)."),
                Film(id: 4, title: "Avatar 2", genre: "Action, Adventure, Fantasy, Science Fiction", releaseDate: "Dec 16, 2022", duration: "2h 58m", rating: "4.0", imageName: "poster4", category: "Coming Soon", synopsis: "A sequel to Avatar (2009)."),
                Film(id: 5, title: "The Flash", genre: "Action, Adventure, Fantasy, Science Fiction", releaseDate: "Nov 3, 2022", duration: "2h 30m", rating: "4.1", imageName: "poster5", category: "Coming Soon", synopsis: "Barry Allen travels back in time to prevent his mother's murder, which brings unintentional consequences to his timeline.")
            ])
]
