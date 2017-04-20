//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    // MARK: - Private Fields
    
    private var _webView: UIWebView!

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // WebViewの設定
        self.setupWebView()
    }
    
    /// WebViewの設定
    private func setupWebView() {
        _webView = UIWebView()
        
        _webView.delegate = self
        _webView.frame = self.view.bounds
        
        let url = URL(string: "https://www.google.com/")
        let request = NSURLRequest(url: url!)
        
        // リクエストを発行
        _webView.loadRequest(request as URLRequest)
        
        self.view.addSubview(_webView)
    }
    
    // MARK: - UIWebViewDelegate
    
    func webView(_ webView: UIWebView,
                 shouldStartLoadWith request: URLRequest,
                 navigationType: UIWebViewNavigationType) -> Bool {
        debugPrint(#function)
        
        return true;
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        debugPrint(#function)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        debugPrint(#function)
    }
}

