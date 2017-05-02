import UIKit

class OrangeViewController: UIViewController {
    var screenShotImageView: UIImageView?

    @IBAction func tapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let screenShot = screenShotImageView {
            view.addSubview(screenShot)
            
            delay(0.4, closure: {
                screenShot.removeFromSuperview()
            })
        }
    }
    
    private func delay(_ delay:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
}
