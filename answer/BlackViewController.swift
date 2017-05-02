import UIKit

class BlackViewController: UIViewController {
    @IBAction func tapped(_ sender: Any) {
        let orangeVC = storyboard?.instantiateViewController(withIdentifier: "orange") as! OrangeViewController
        
        let imageView = UIImageView(image: takeScreenShot())
        imageView.frame = UIScreen.main.bounds
        
        orangeVC.screenShotImageView = imageView
        present(orangeVC, animated: false, completion: nil)
        
        let whiteVC = self.storyboard?.instantiateViewController(withIdentifier: "white")
        orangeVC.present(whiteVC!, animated: true, completion: nil)
    }
    
    private func takeScreenShot() -> UIImage {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}
