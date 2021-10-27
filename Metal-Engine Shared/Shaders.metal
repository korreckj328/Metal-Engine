//
//  Shaders.metal
//  Metal-Engine Shared
//
//  Created by Jeremiah Korreck on 10/26/21.
//

// File for Metal kernel and shader functions

#include <metal_stdlib>
#include <simd/simd.h>

// Including header shared between this Metal shader code and Swift/C code executing Metal API commands
#import "ShaderTypes.h"

using namespace metal;

struct VertexIn {
    float4 position [[attribute(0)]];
};

vertex float4 vertex_main(const VertexIn vertexIn [[stage_in]],
                          constant float &timer [[buffer(1)]]) {
    float4 position = vertexIn.position;
    position.y += timer;
    return position;
}

fragment float4 fragment_main() {
    return float4(1, 0, 0, 1);
}
