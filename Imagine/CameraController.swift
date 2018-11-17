//
//  CameraController.swift
//  Imagine
//
//  Created by Yankai Jia on 7/23/18.
//  Copyright © 2018 Yankai Jia. All rights reserved.
//

import AVFoundation
class CameraController{
    var captureSession: AVCaptureSession?
    var frontCamera: AVCaptureDevice?
    var rearCamera: AVCaptureDevice?
    
    func prepare(completionHandler: @escaping(Error?) -> Void){
        //Creating a capture session.
        func createCaptureSession(){
            self.captureSession = AVCaptureSession() //这里self类似java里this，创建一个新的avcapturesession，
            
        }
        
        //Obtaining and configuring the necessary capture devices.
        func configureCaptureDevices() throws {
            let session = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera], mediaType: AVMediaType.video, position: .unspecified ) //find all of the wide angle cameras vavilable on the current device and convert them into an array of non-optional AVCaptureDevice instances. If no cameras are available, throw an error.
            let cameras = session.devices.compactMap{ $0 }
            
            
        }
        
        //Creating inputs using the capture devices.
        func configureDeviceInputs() throws {}
        
        //Configuring a photo output object to process captured images.
        func configurePhotoOutput() throws {}
        
        //DispatchQueue manages the execution of work items. Each work item submitted to a queue is processed on a pool of threads managed by the system.
        DispatchQueue(label: "prepare").async {
            do {
                createCaptureSession()
                try configureCaptureDevices()
                try configureDeviceInputs()
                try configurePhotoOutput()
            }
                
            catch {
                DispatchQueue.main.async {
                    completionHandler(error)
                }
                
                return
            }
            
            DispatchQueue.main.async {
                completionHandler(nil)
            }
        }
        
    }
   
}
extension CameraController {//用来管理各种错误当creating a capture session的时候
    enum CameraControllerError: Swift.Error {
        case captureSessionAlreadyRunning
        case captureSessionIsMissing
        case inputsAreInvalid
        case invalidOperation
        case noCamerasAvailable
        case unknown
    }
    
    public enum CameraPosition {
        case front
        case rear
    }
}















