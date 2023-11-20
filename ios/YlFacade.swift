@objc(YlFacade)
class YlFacade: RCTViewManager {

    private let childView =  CustomView();
 override func view() -> UIView! {
          return childView
        }

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }
}


class CustomView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        let rectangle = CGRect(x: 0, y: 100, width: 320, height: 100)
        ctx.stroke(rectangle)
    }

}
