
import UIKit
import SafariServices

fileprivate var containerView: UIView!

extension UIViewController {
   
   func presentGFAlertOnMainThread(title : String,message: String,buttonTitle:String) {
       DispatchQueue.main.async {
           let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
           alertVC.modalPresentationStyle = .overFullScreen
           alertVC.modalTransitionStyle = .crossDissolve
           self.present(alertVC, animated: true)
       }
   }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url )
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC,animated: true)
    }
    
    func showLoadingView() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            
            containerView = UIView(frame: self.view.bounds)
            self.view.addSubview(containerView)
            
            containerView.backgroundColor = .systemBackground
            containerView.alpha = 0
            
            UIView.animate(withDuration: 0.25){
                containerView.alpha = 0.8}
            
            let activityIndicator = UIActivityIndicatorView(style: .large)
            containerView.addSubview(activityIndicator)
            
            activityIndicator.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                activityIndicator.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                activityIndicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ])
            activityIndicator.startAnimating()
        }
    }
    func dissmissLoadingView()  {
        DispatchQueue.main.async {
            containerView.removeFromSuperview()
            containerView = nil
        }
       
    }
    
    func showEmptyStateView(with message:String, in view:UIView){
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
         
        
    }
}
