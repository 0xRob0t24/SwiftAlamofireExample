import Foundation
import Alamofire

print("Starting Alamofire example...")

AF.request("https://api.github.com/users/octocat").responseJSON { response in
    switch response.result {
    case .success(let value):
        print("Response JSON: \(value)")
    case .failure(let error):
        print("Error: \(error)")
    }
}

print("Request sent, waiting for response...")
RunLoop.main.run()




