// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

// MARK: - NowPlaying Model
public struct NowPlaying: Decodable {
    public let dates: Dates?
    public let page: Int?
    public let results: [Result]?
    public let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case dates, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

public struct Dates: Decodable {
    public let maximum, minimum: String?
}

// MARK: - Upcoming Model
public struct Upcoming: Decodable {
    public let dates: Dates?
    public let page: Int?
    public let results: [Result]?
    public let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case dates, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - TopRated Model
public struct TopRated: Decodable {
    public let page: Int?
    public let results: [Result]?
    public let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Popular Model
public struct Popular: Decodable {
    public let page: Int?
    public let results: [Result]?
    public let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Genres Model
public struct Genres: Decodable {
    public let genres: [Genre]?
}

public struct Genre: Decodable {
    public let id: Int?
    public let name: String?
}

// MARK: - MoviesOfGenre Model
public struct MoviesOfGenre: Decodable {
    public let page: Int?
    public let results: [Result]?
    public let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - CastAndCrew Model
public struct CastAndCrew: Decodable {
    public let id: Int?
    public let cast, crew: [Cast]?
}

public struct Cast: Decodable {
    public let adult: Bool?
    public let gender, id: Int?
    public let knownForDepartment: String?
    public let name, originalName: String?
    public let popularity: Double?
    public let profilePath: String?
    public let castID: Int?
    public let character, creditID: String?
    public let order: Int?
    public let department: String?
    public let job: String?

    enum CodingKeys: String, CodingKey {
        case adult, gender, id
        case knownForDepartment = "known_for_department"
        case name
        case originalName = "original_name"
        case popularity
        case profilePath = "profile_path"
        case castID = "cast_id"
        case character
        case creditID = "credit_id"
        case order, department, job
    }
}

// MARK: - MovieDetails Model
public struct MovieDetails: Decodable {
    public let adult: Bool?
    public let backdropPath: String?
    public let budget: Int?
    public let genres: [Genre]?
    public let homepage: String?
    public let id: Int?
    public let imdbID, originalLanguage, originalTitle, overview: String?
    public let popularity: Double?
    public let posterPath: String?
    public let productionCompanies: [ProductionCompany]?
    public let productionCountries: [ProductionCountry]?
    public let releaseDate: String?
    public let revenue, runtime: Int?
    public let spokenLanguages: [SpokenLanguage]?
    public let status, tagline, title: String?
    public let video: Bool?
    public let voteAverage: Double?
    public let voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case budget, genres, homepage, id
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue, runtime
        case spokenLanguages = "spoken_languages"
        case status, tagline, title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

public struct ProductionCompany: Decodable {
    public let id: Int?
    public let logoPath: String?
    public let name, originCountry: String?

    enum CodingKeys: String, CodingKey {
        case id
        case logoPath = "logo_path"
        case name
        case originCountry = "origin_country"
    }
}

public struct ProductionCountry: Decodable {
    public let iso3166_1, name: String?

    enum CodingKeys: String, CodingKey {
        case iso3166_1 = "iso_3166_1"
        case name
    }
}

public struct SpokenLanguage: Decodable {
    public let englishName, iso639_1, name: String?

    enum CodingKeys: String, CodingKey {
        case englishName = "english_name"
        case iso639_1 = "iso_639_1"
        case name
    }
}

// MARK: - Result model
public struct Result: Decodable {
    public let adult: Bool?
    public let backdropPath: String?
    public let genreIDS: [Int]?
    public let id: Int?
    public let originalLanguage: String?
    public let originalTitle, overview: String?
    public let popularity: Double?
    public let posterPath, releaseDate, title: String?
    public let video: Bool?
    public let voteAverage: Double?
    public let voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
