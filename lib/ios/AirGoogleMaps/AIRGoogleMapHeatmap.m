//
//  AIRMapHeatmap.m
//  AirMaps
//
//  Created by Admin on 21/06/2017.
//  Copyright © 2017 Christopher. All rights reserved.
//

#import "AIRGoogleMapHeatmap.h"

@implementation AIRGoogleMapHeatmap

- (void) setPoints:(NSArray<AIRGoogleMapWeightedPoint *> *)points {
    _points = points;
    
    [self refreshHeatmapData];
    //self.renderer = [[DTMHeatmapRenderer alloc] initWithOverlay:self.heatmap];
    [self update];
}

- (void) refreshHeatmapData {
    NSMutableDictionary *data = [NSMutableDictionary new];
    for(int i = 0; i < _points.count; i++)
    {
        MKMapPoint point = MKMapPointForCoordinate(_points[i].coordinate);
        NSValue *pointValue = [NSValue value:&point
                                withObjCType:@encode(MKMapPoint)];
        data[pointValue] = @(_points[i].weight);
    }
    
    //[self.heatmap setData:data];
}

- (void) update
{
    if (!_renderer) return;
    
    if (_map == nil) return;
    // [_map removeOverlay:self];
    // [_map addOverlay:self];
}

#pragma mark MKOverlay implementation

- (CLLocationCoordinate2D) coordinate
{
    //return self.heatmap.coordinate;
}

- (MKMapRect) boundingMapRect
{
    //return self.heatmap.boundingMapRect;
}

- (BOOL)canReplaceMapContent
{
    return NO;
}

@end
