//
//  Primitive.swift
//  Metal-Engine
//
//  Created by Jeremiah Korreck on 10/26/21.
//

import MetalKit

class Primitive {
    static func makeCube(device: MTLDevice, size: Float) -> MDLMesh {
        let allocator = MTKMeshBufferAllocator(device: device)
        let mesh = MDLMesh(boxWithExtent: [size, size, size], segments: [1, 1, 1], inwardNormals: false, geometryType: .triangles, allocator: allocator)
        
        return mesh
    }
    
    static func makeSphere(device: MTLDevice, radius: Float) -> MDLMesh {
        let allocator = MTKMeshBufferAllocator(device: device)
        let mesh = MDLMesh(sphereWithExtent: [radius, radius, radius], segments: [100,100], inwardNormals: false, geometryType: .triangles, allocator: allocator)
        
        return mesh
    }
    
    static func makeCone(device: MTLDevice, size: Float) -> MDLMesh {
        let allocator = MTKMeshBufferAllocator(device: device)
        let mesh = MDLMesh(coneWithExtent: [size, size, size], segments: [10,10], inwardNormals: false, cap: false, geometryType: .triangles, allocator: allocator)
        
        return mesh
    }
}
