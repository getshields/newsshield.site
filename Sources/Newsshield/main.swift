import Foundation
import Publish
import Plot

enum DownloadState {
    case download
    case preOrder
}

struct Download {
    let title = "Download"
    let subtitle = "Get News Shield for Safari on macOS"
    let appStoreURL = "https://apps.apple.com/us/app/news-shield/id1489025442?ls=1&mt=12"
    let state: DownloadState = .download
}

struct Brands {
    let title = "Brands"
    let subtitle = "Publications We Work With"
    let sources = ["abc-news",
                    "axios",
                    "bbc",
                    "business-insider",
                    "buzzfeed-news",
                    "cbs-news",
                    "cnn",
                    "fox-news-channel",
                    "ft",
                    "gizmodo",
                    "huffpost",
                    "jalopnik",
                    "los-angeles-times",
                    "new-york-post",
                    "techcrunch",
                    "the-guardian",
                    "the-information-logo",
                    "the-new-york-times",
                    "the-washington-post",
                    "yahoo!-news"]
}

// This type acts as the configuration for your website.
struct Newsshield: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "News Shield"
    var description = "Redact Sensational News"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var keywords = "Redact, Sensational, News, Shield, Desational"
    var copyright = "Copyright © 2019 - 2020 Get Shields"
    var download = Download()
    let brands = Brands()
}

// This will generate your website using the built-in Foundation theme:
try Newsshield().publish(withTheme: .stevenPaulJobs)
