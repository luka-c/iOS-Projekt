//
//  Job.swift
//  OddJobsApp
//
//  Created by Mac Use on 02.06.2021..
//

struct Job: Decodable {
    let id: Int
    let title: String
    let description: String
    let price: Int
    let category: JobCategory
    let worker: User
}
